import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Live Classes",
      subtitle: "Interactive Live Classes",
      event: "",
      img: "assets/images/liveclass.jpg");

  Items item2 = new Items(
    title: "Doubt Clearing",
    subtitle: "Live Doubt clearing Sessions",
    event: "",
    img: "assets/images/doubt.jpg",
  );
  Items item3 = new Items(
    title: "Regular Assessment",
    subtitle: "Multiple Assessment during Course",
    event: "",
    img: "assets/images/assesment.png",
  );
  Items item4 = new Items(
    title: "Professional Teachers",
    subtitle: "Trained and Experienced Professionals",
    event: "",
    img: "assets/images/proteacher.png",
  );
  Items item5 = new Items(
    title: "Cover All Topics",
    subtitle: "Topics Designed by experts",
    event: "",
    img: "assets/images/topics.jpg",
  );
  Items item6 = new Items(
    title: "Certificate and Report",
    subtitle: "Course Certificate after completion",
    event: "",
    img: "assets/images/certificate.png",
  );
  Items item7 = new Items(
    title: "Regular Feedback",
    subtitle: "Teams to take feedback from parents",
    event: "",
    img: "assets/images/feedback.png",
  );
  Items item8 = new Items(
    title: "Improvement",
    subtitle: "Constantly improving over time",
    event: "",
    img: "assets/images/improvement.png",
  );
  Items item9 = new Items(
    title: "Weekend Classes",
    subtitle:
        "Classes only on the weekends, so that you can focus on other subjects for the rest of the week",
    event: "",
    img: "assets/images/weekend.png",
  );
  Items item10 = new Items(
    title: "Whiteboard",
    subtitle:
        "A virtual whiteboard is used tohelp students understand topics better",
    event: "",
    img: "assets/images/whiteboard.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
      item7,
      item8,
      item9,
      item10
    ];
    var color = 0xffD3D3D3;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: 10,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black87,
                            fontSize: 11,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
