import 'package:flutter/material.dart';
import 'package:real_estate_app/Pages/ApartPages/apart_page.dart';
import 'package:real_estate_app/Pages/add_apart_page.dart';
import 'package:real_estate_app/Pages/home_page.dart';
import 'package:real_estate_app/Pages/LoginPages/login_page.dart';
import 'package:real_estate_app/Pages/profile_page.dart';
import 'package:real_estate_app/NavBar/nav_bar.dart';
import 'package:real_estate_app/NavBar/nav_model.dart';
import 'Pages/messages_page.dart';
import 'Pages/saved_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final anasayfaNavKey = GlobalKey<NavigatorState>();
  final kaydedilenlerNavKey = GlobalKey<NavigatorState>();
  final mesajlarNavKey = GlobalKey<NavigatorState>();
  final profilNavKey = GlobalKey<NavigatorState>();
  int _selectedTab = 0;
  List<NavModel> items = [];


  @override
  void initState() {


    super.initState();
    items = [
      NavModel(page: const Anasayfa(), navKey: anasayfaNavKey),
      NavModel(page: const Kaydedilenler(), navKey: kaydedilenlerNavKey),
      NavModel(page: const Mesajlar(), navKey: mesajlarNavKey),
      NavModel(page: const Login(), navKey: profilNavKey),
    ];
  }

  @override
  Widget build(BuildContext context) {

    MediaQueryData queryData = MediaQuery.of(context);
    double keyboardHeight = queryData.viewInsets.bottom;

    return WillPopScope(
      onWillPop: () {
        if (items[_selectedTab].navKey.currentState?.canPop() ?? false) {
          items[_selectedTab].navKey.currentState?.pop();
          return Future.value(false);
        } else {
          return Future.value(true);
        }
      },
      child: Scaffold(
        body: IndexedStack(
          index: _selectedTab,
          children: items
              .map((page) =>
              Navigator(
                key: page.navKey,
                onGenerateInitialRoutes: (navigator, initialRoute) {
                  return [
                    MaterialPageRoute(builder: (context) => page.page)
                  ];
                },
              ))
              .toList(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          alignment:keyboardHeight != 0 ? Alignment(0, 200) : null,
          margin: const EdgeInsets.only(top: 10),
          width: 58,
          height: 58,
          child: FloatingActionButton(

            isExtended: true,
            backgroundColor: Colors.white,
            elevation: 0,
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ApartEkle())),
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2, color: Colors.purpleAccent),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.purpleAccent,
            ),
          ),
        ),
        bottomNavigationBar: NavBar(
          pageIndex: _selectedTab,
          onTap: (index) {
            if (index == _selectedTab) {
              items[index]
                  .navKey
                  .currentState
                  ?.popUntil((route) => route.isFirst);
            }
            else {
              setState(() {
                _selectedTab = index;
              });
            }
          },
        ),
      ),
    );
  }

  Widget homeWidget() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return ApartPage();
        }));
      },
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: 225.0,
        height: 300.0,
        child: Stack(
          children: [
            Container(
              width: 230.0,
              height: 275.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  image: DecorationImage(
                      image: AssetImage("images/apart.jpg"),
                      fit: BoxFit.cover)),
            ),
            Positioned(
              bottom: 1,
              right: 15.0,
              child: FloatingActionButton(
                heroTag: null,
                mini: true,
                backgroundColor: Colors.orange,
                child: Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
            Positioned(
              bottom: 45,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Aile Evi",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        "Antalya, Alanya Kalesi",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}