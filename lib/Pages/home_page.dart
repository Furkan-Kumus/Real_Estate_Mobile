import 'package:flutter/material.dart';
import 'package:real_estate_app/Pages/ApartPages/apart_page_2.dart';
import 'package:real_estate_app/Pages/ApartPages/apart_page_3.dart';
import 'package:real_estate_app/Pages/ApartPages/apart_page_4.dart';
import 'package:real_estate_app/Pages/ApartPages/apart_page_5.dart';

import 'ApartPages/apart_page.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Apart Ev",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.indigo,
                      image: DecorationImage(
                        image: AssetImage("images/apart.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Keşfet",
                style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Yeni Villalara Göz Atın!",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.withOpacity(.4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Güzel Bir Yuva Bul",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Stack(
                    children: <Widget>[
                      Icon(Icons.notifications_none),
                      Positioned(
                        top: 1,
                        right: 1,
                        child: Container(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 310.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    homeWidget1(),
                    homeWidget2(),
                    homeWidget3(),
                  ],
                ),
              ),
              Container(
                height: 310.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    homeWidget4(),
                    homeWidget5(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget homeWidget1() {
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
                      image: AssetImage("images/house_1_5/h1.jpg"),
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
  Widget homeWidget2() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return ApartPage2();
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
                      image: AssetImage("images/house_1_5/h2.jpg"),
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
                    "Öğrenci Evi",
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
                        "İstanbul, Kadıkoy",
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
  Widget homeWidget3() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return ApartPage3();
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
                      image: AssetImage("images/house_1_5/h3.jpg"),
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
                    "Günlük Ev",
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
                        "Ankara, Merkez",
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
  Widget homeWidget4() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return ApartPage4();
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
                      image: AssetImage("images/house_1_5/h4.jpg"),
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
                    "Aylık Apart",
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
                        "İzmir, Sahil",
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
  Widget homeWidget5() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return ApartPage5();
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
                      image: AssetImage("images/house_1_5/h5.jpg"),
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
                    "Kışlık Ev",
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
                        "Rize, Güneysu",
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