import 'package:flutter/material.dart';

class ApartPage5 extends StatefulWidget {
  const ApartPage5({super.key});

  @override
  State<ApartPage5> createState() => _ApartPageState();
}

class _ApartPageState extends State<ApartPage5> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.asset("images/house_1_5/h5_full.jpg", fit: BoxFit.cover,),
              height: screenHeight*0.4,),
            Container(
              margin: EdgeInsets.only(top: screenHeight*0.3),
              child: Material(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100.0)
                ),
                child: Container(
                  padding: EdgeInsets.only(top:30.0 ,bottom: 30.0,left: 30.0,right: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("\$1,299",style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),),
                          Icon(Icons.bookmark_border, color: Colors.deepPurpleAccent,)
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Text("Aile Evi", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),),
                      SizedBox(height: 10.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.spa, size: 18.0,),
                              Text("2"),
                              Icon(Icons.room_service, size: 18.0,),
                              Text("3"),
                              Icon(Icons.home, size: 18.0,),
                              Text("2"),
                            ],
                          ),
                          Text("2,500 m2"),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Divider(),
                      SizedBox(height: 10.0,),
                      Text("Fiyat Hesaplayıcı", style: TextStyle(
                        color: Colors.black.withOpacity(.8),
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("\$379/ay"),
                          Icon(Icons.question_answer, color: Colors.purpleAccent,)
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Text("0 Peşinat Anında Teslim", style: TextStyle(
                        color: Colors.black.withOpacity(.8),
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(height: 5.0,),
                      Text("Detaylı bilgi için bizi arayın"),
                      SizedBox(height: 10.0,),
                      Image.asset("images/konum.png"),
                      SizedBox(height: 10.0,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10.0),
                              child: Text("Bize Ulaşın", style: TextStyle(
                                fontSize: 10.0,
                              ),),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                ),
                                color: Colors.deepPurpleAccent.withOpacity(.5),
                              ),
                            ),
                          ),
                          SizedBox(width: 12.0,),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10.0),
                              child: Text("Daha Fazla Apart", style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.0,
                              ),),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  bottomLeft: Radius.circular(30.0),
                                  bottomRight: Radius.circular(30.0),
                                ),
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
