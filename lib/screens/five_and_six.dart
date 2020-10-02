import 'package:flutter/material.dart';

class Fiveandsix extends StatefulWidget {
  @override
  _FiveandsixState createState() => _FiveandsixState();
}

class _FiveandsixState extends State<Fiveandsix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '5 and ',
              style: TextStyle(fontSize: 22, color: Colors.black87),
            ),
            Text(
              '6',
              style: TextStyle(fontSize: 22, color: Colors.black87),
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.ac_unit),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Basic",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 36,
                      fontFamily: "OpenSans",
                      letterSpacing: 1.0),
                ),
                Text(
                  "3 Weeks - 6 Classes",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontFamily: "OpenSans",
                      letterSpacing: 0),
                ),
              ],
            ),
          ),
          Center(
            child: Stack(
              children: [
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                      height: 500,
                      width: 500,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "\nFractions and Decimals",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nNumbers",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nGeometry",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nData Sufficiency",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nTricky Puzzles",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nBlood Relations",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nNVR - Intro",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nMental Ability - Intro",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nLogical Deduction - Intro",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            )
                          ]),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.yellow[200]),
                    ),
                    Container(
                      height: 60.0,
                      width: 160.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage('assets/images/price1.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      width: 130.0,
                      child: RaisedButton(
                        onPressed: () {},
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.green[300],
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.5,
                            fontSize: 18.0,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
