import 'package:flutter/material.dart';

class Nine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class 9 to 12"),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: ListView(children: [
            Center(
                child: Text("3 Courses",
                    style: TextStyle(
                        color: Colors.blueAccent[700],
                        fontSize: 30,
                        fontWeight: FontWeight.bold))),
            SizedBox(height: 10),
            Text(
              "- Live teaching on a whiteboard like an actual classroom",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
                "- Become an expert in solving aptitude questions of all types",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("- Learn faster methods of Solving problems",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
                "- Enter into new domains of topics like Guesstimates and Permutation & combination",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
                "- Be prepared for all types of Entrance exams, Olympiads and competitive Exams",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
                "- Topics are divided into 4 courses with increasing difficulty levels",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("- Get Certificate of Completion",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
          ])),
    );
  }
}
