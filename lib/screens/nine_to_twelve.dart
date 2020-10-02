import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NinetoTwelve extends StatefulWidget {
  @override
  _NinetoTwelveState createState() => _NinetoTwelveState();
}

class _NinetoTwelveState extends State<NinetoTwelve> {
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
                color: Color(0xFFE4C2Fd),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                  child: Text(
                    "9 to 12",
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
                      fontFamily: "Futura",
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
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Futura'),
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
                              "\nOdd One Out",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nVenn Diagram",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nAverage",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nData Sufficiency",
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
                              "\nNumbers",
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
                              "\nRaces and Games",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nRatio and Proportion",
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
                              "\nCompound Interest",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nAges",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nArea",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nAbsolute Value",
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
                  "Intermediate",
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
                        style: TextStyle(color: Colors.white),
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
                      height: 750,
                      width: 750,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "\nAlligation or Mixture",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nPartnership",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nTime and Work",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nBoats ans Streams",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nCalender",
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
                              "\nBanker's Discount",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nClock",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nPnC - Level 1",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nPipes and Cisterns",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nStocks and Shares",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "\nQuestion Bank & Next Course Intro",
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
                          ]),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFFFF6161)),
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
                        style: TextStyle(color: Colors.white),
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
                      height: 750,
                      width: 750,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "\nOdd One Out",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nVenn Diagram",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nAverage",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nData Sufficiency",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nProfit and Loss",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nSimplification",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nNumbers",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nTime and Distance",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nRaces and Games",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nRatio and Proportion",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nChain Rule",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nCompound Interest",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nAges",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nArea",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nAbsolute Value",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nInequalities",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                          ]),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.blue[700]),
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
                  "Expert",
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
                        style: TextStyle(color: Colors.white),
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
                      height: 750,
                      width: 750,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "\nOdd One Out",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nVenn Diagram",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nAverage",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nData Sufficiency",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nProfit and Loss",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nSimplification",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nNumbers",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nTime and Distance",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nRaces and Games",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nRatio and Proportion",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nChain Rule",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nCompound Interest",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nAges",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nArea",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nAbsolute Value",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                            Text(
                              "\nInequalities",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.black87),
                            ),
                          ]),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFF75CAA8)),
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
        ],
      ),
    );
  }
}
