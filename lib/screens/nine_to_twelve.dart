import 'package:aptismart/razorpay/advancea.dart';
import 'package:aptismart/razorpay/basica.dart';
import 'package:aptismart/razorpay/experta.dart';
import 'package:aptismart/razorpay/intermeditea.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NinetoTwelve extends StatefulWidget {
  @override
  _NinetoTwelveState createState() => _NinetoTwelveState();
}

class _NinetoTwelveState extends State<NinetoTwelve> {
  String bullet = "\u2022 ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
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
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                  child: Text(
                    "9 & Above",
                    style: TextStyle(color: Colors.blue[900], fontSize: 26),
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
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Basic",
                  style: GoogleFonts.titilliumWeb(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 34,
                          fontWeight: FontWeight.w600)),
                ),
                Container(
                  child: Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                      child: Text(
                        "4 weeks - 8 Classes",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: 'OpenSans'),
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
                      width: 450,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                            ),
                            Text(
                              "     \u2022 Odd One Out",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              "     \u2022 Venn Diagram",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              "     \u2022 Average",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "     \u2022 Data Sufficiency",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "     \u2022 Profit and Loss",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "     \u2022 Simplification",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "     \u2022 Numbers",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "     \u2022 Time and Distance",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "     \u2022 Races and Games",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "     \u2022 Ratio and Proportion",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "     \u2022 Chain Rule",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "     \u2022 Compound Interest",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "     \u2022 Ages",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "     \u2022 Area",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "     \u2022 Absolute Value",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "     \u2022 Inequalities",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.left,
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Basica()));
                        },
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
            padding: const EdgeInsets.fromLTRB(12.0, 30.0, 8.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Intermediate",
                  style: GoogleFonts.titilliumWeb(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.w600)),
                ),
                Container(
                  child: Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                      child: Text(
                        "4 weeks - 8 Classes",
                        style: TextStyle(color: Colors.black, fontSize: 15),
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
                      height: 450,
                      width: 650,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "     \u2022 Alligation or Mixture",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Partnership",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Time and Work",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Boats ans Streams",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Calender",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Square and Cube Root",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Banker's Discount",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Clock",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 PnC - Level 1",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Pipes and Cisterns",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Stocks and Shares",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Question Bank",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              "     \u2022 Volume and SA",
                              style: TextStyle(
                                  fontSize: 22,
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
                          image: AssetImage('assets/images/price2.jpg'),
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Intermediteaa()));
                        },
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
                  style: GoogleFonts.titilliumWeb(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 34,
                          fontWeight: FontWeight.w600)),
                ),
                Container(
                  child: Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                      child: Text(
                        "4 weeks - 8 Classes",
                        style: TextStyle(color: Colors.black, fontSize: 17),
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
                      height: 450,
                      width: 450,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "     \u2022 NVR",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Calender",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Logarithms",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Pnc - Level 2",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 True Discount",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Logical Deduction",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Probability - Level 1",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Trains",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Progression",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Geometry",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Mental Ability - Level 1",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                            Text(
                              "     \u2022 Data Interpretation",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black87,
                                  fontFamily: "OpenSans"),
                            ),
                          ]),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFF536EB7)),
                    ),
                    Container(
                      height: 60.0,
                      width: 160.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage('assets/images/price3.jpg'),
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Advancea()));
                        },
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
                  style: GoogleFonts.titilliumWeb(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 34,
                          fontWeight: FontWeight.w600)),
                ),
                Container(
                  child: Center(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                      child: Text(
                        "4 weeks - 8 Classes",
                        style: TextStyle(color: Colors.black, fontSize: 17),
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
                      height: 350,
                      width: 450,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "     \u2022 NVR",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.black87),
                            ),
                            Text(
                              "     \u2022 PnC - Level 3",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.black87),
                            ),
                            Text(
                              "     \u2022 Probability - Level 2",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.black87),
                            ),
                            Text(
                              "     \u2022 Guesstimates",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.black87),
                            ),
                            Text(
                              "     \u2022 Mental Ability - Level 2",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.black87),
                            ),
                            Text(
                              "     \u2022 Statistics",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.black87),
                            ),
                            Text(
                              "     \u2022 Data Interpretation - Level 2",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.black87),
                              textAlign: TextAlign.justify,
                            ),
                            Text(
                              "     \u2022 HOTS - 1",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.black87),
                            ),
                            Text(
                              "     \u2022 HOTS - 2",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.black87),
                            ),
                            Text(
                              "     \u2022 HOTS - 3",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.black87),
                            ),
                          ]),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xFF75CBA8)),
                    ),
                    Container(
                      height: 60.0,
                      width: 180.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: AssetImage('assets/images/price4.jpg'),
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
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Experta()));
                        },
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

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
