import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
                color: Colors.yellow[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                  child: Text(
                    "About Us",
                    style: TextStyle(color: Colors.black, fontSize: 28),
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
      body: Container(
        padding: EdgeInsets.all(30),
        child: Text(
            "Starting early to gain command over aptitude is like laying the basis for a strong future. Aptismart provides you with a platform where you do not just sit and wait for the opportunities to come but make way for gaining command over fundamentals of aptitude, which one cannot escape ever. Starting from grade 5th, experienced educators take live classes which are a blend of traditional teaching and modern technology to provide you with the best conceptual clarity. Learning is made fun and interesting by teaching on a whiteboard like an actual classroom. The courses are designed with respect to meeting the specific needs of a variety of students and topics covered overlap with many competitive examinations and olympiads. The student is continuously evaluated and doubt clearing sessions are taken after every lecture to enhance the understanding and develop effective communication. There are applications for the students and educators where a guided plan with an effective timetable is laid to be followed. In order to keep a track of the performance, attendance is done on an everyday basis and regular communication is held between the parents and the educator.",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'OpenSans',
            ),
            textAlign: TextAlign.justify),
      ),
    );
  }
}
