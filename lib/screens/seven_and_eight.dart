import 'package:flutter/material.dart';

class Sevenandeight extends StatefulWidget {
  @override
  _SevenandeightState createState() => _SevenandeightState();
}

class _SevenandeightState extends State<Sevenandeight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(1, 1), // changes position of shadow
                    ),
                  ],
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                    child: Text(
                      "7 & 8",
                      style: TextStyle(color: Colors.black, fontSize: 26),
                    ),
                  ),
                ),
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
        body: ListView(children: <Widget>[
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
                    fontFamily: "Futura",
                    letterSpacing: 0.5,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFff6e6e),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                      child: Text(
                        "3 weeks - 6 Classes",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Futura',
                        ),
                      ),
                    ),
                  ),
                )
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
                      height: 550,
                      width: 550,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "\nNVR",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nMental Ability",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nLogical Deduction",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nVenn Diagrams",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nNumbers",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nChain Rule",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nFractions and Decimals",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nInequalities",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                          ]),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFFF2BF5E)),
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Advance",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 36,
                      fontFamily: "OpenSans",
                      letterSpacing: 0.5),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFff6e6e),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                      child: Text(
                        "4 weeks - 8 Classes",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                )
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
                      height: 850,
                      width: 850,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "\nAverage",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nOdd one Out",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nProfit and Loss",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nSimplification",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nBoats and Streams",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nProbability-Basic",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nGeometry",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nSquare and Cube Root",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nVolume and SA",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nTime and Distance",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nNVR - Level 2",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nMental Ability - Level 2",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nLogical Deduction - Level 2",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nProgression - Basics",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nClock - Basics",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nData Interpretation",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                          ]),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFFD8F5E1)),
                    ),
                    Container(
                      height: 60.0,
                      width: 160.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage('assets/images/sevenp2.jpg'),
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
              ],
            ),
          ),
        ]));
  }
}
