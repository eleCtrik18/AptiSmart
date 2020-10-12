import 'package:aptismart/screens/aboutus.dart';
import 'package:aptismart/screens/contact.dart';
import 'package:aptismart/screens/courses.dart';
import 'package:aptismart/screens/fivesix.dart';
import 'package:aptismart/screens/my_courses.dart';
import 'package:aptismart/screens/ninetotwelve.dart';
import 'package:aptismart/screens/privacy_policy.dart';
import 'package:aptismart/screens/seveneight.dart';
import 'package:aptismart/screens/terms_condition.dart';
import 'package:aptismart/services/googlesignin.dart';
import 'package:aptismart/services/phone_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> secureScreen() async {
    await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  }

  @override
  void initState() {
    secureScreen();

    super.initState();
  }

  Items item1 = new Items(
      title: "Live Classes",
      subtitle:
          "Students get the experience of an actual classroom sitting at their home through our live classes",
      event: "",
      img: "assets/images/liveclass.jpg");

  Items item2 = new Items(
    title: "Doubt Clearing",
    subtitle: "Live Doubt clearing sessions after every class",
    event: "",
    img: "assets/images/doubt.jpg",
  );
  Items item3 = new Items(
    title: "Regular Assessment",
    subtitle:
        "Multiple assessments during the course allow the Educators to evaluate the students better and prepare an optimized curriculum for them",
    event: "",
    img: "assets/images/assesment.png",
  );
  Items item4 = new Items(
    title: "Professional Teachers",
    subtitle:
        "All our Teachers are experienced professionals who have an expertise in Teaching Aptitude.  Our Teachers are specially trained to cater to all types of students",
    event: "",
    img: "assets/images/proteacher.png",
  );
  Items item5 = new Items(
    title: "Cover All Topics",
    subtitle:
        "Our courses and the teaching material has been designed  in a way that it covers all domains of Aptitude in the minimum time ",
    event: "",
    img: "assets/images/topics.jpg",
  );
  Items item6 = new Items(
    title: "Certificate and Report",
    subtitle:
        "Get a course completion Certificate at the completion of Every Course.Also get a detailed report of your evaluations",
    event: "",
    img: "assets/images/certificate.png",
  );
  Items item7 = new Items(
    title: "Regular Feedback",
    subtitle:
        "We have special teams that take regular feedback  from parents as well as students & make sure that the necessary changes are implemented",
    event: "",
    img: "assets/images/feedback.png",
  );
  Items item8 = new Items(
    title: "Improvement",
    subtitle:
        "Using our advanced Data Analytics tools we make sure that we are constantly improving with every single day",
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
  Items item11 = new Items(
    title: "One step Ahead",
    subtitle:
        "Our courses will always keep you one step ahead of everyone else",
    event: "",
    img: "assets/images/onestep.jpg",
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
      item10,
      item11
    ];
    var color = 0xffD3D3D3;
    return Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Apti',
                  style: TextStyle(
                      fontSize: 22, color: Colors.black87, fontFamily: 'Anton'),
                ),
                Text(
                  'Smart',
                  style: TextStyle(
                      fontSize: 22, color: Colors.black87, fontFamily: 'Anton'),
                )
              ],
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: [
              Opacity(
                  opacity: 1.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: IconButton(
                      onPressed: () async {
                        await googleSignIn.disconnect();
                      },
                      icon: Icon(
                        MdiIcons.logout,
                      ),
                    ),
                  ))
            ],
            iconTheme: new IconThemeData(color: Colors.black)),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text(
                  'Welcome to AptiSmart',
                  style: TextStyle(fontSize: 20),
                ),
                //accountEmail: new Text('singhchetan0542@gmail.com'),
                currentAccountPicture: new CircleAvatar(
                  child: Image.asset("assets/logo/lomgo.png"),
                ),
              ),
              // new Container(
              //child: new DrawerHeader(child: new CircleAvatar()),
              //color: Colors.blueAccent,
              // ),
              new Container(
                color: Colors.red[200],
                child: new Column(children: <Widget>[
                  new ListTile(
                    title: new Text('My Courses'),
                    trailing: new Icon(Icons.person),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Mycourses()));
                    },
                  ),
                  new Divider(),
                  new ListTile(
                    title: new Text('Courses'),
                    trailing: new Icon(Icons.library_books),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Courses()));
                    },
                  ),
                  new Divider(),
                  new ListTile(
                    title: new Text('Contact Us'),
                    trailing: new Icon(Icons.phone),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Contact()));
                    },
                  ),
                  new Divider(),
                  new ListTile(
                    title: new Text('About Us'),
                    trailing: new Icon(Icons.group),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AboutUs()));
                    },
                  ),
                  new Divider(),
                  new ListTile(
                    title: new Text(
                      'Terms & Condition',
                      style: TextStyle(fontSize: 12),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Termsandcondition()));
                    },
                  ),
                  new Divider(),
                  new ListTile(
                    title: new Text(
                      'Privacy Policy',
                      style: TextStyle(fontSize: 12),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Privacypolicy()));
                    },
                  ),
                ]),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Stack(children: <Widget>[
          new Container(
              child: new Column(children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: <Widget>[
                  Image(
                    image: AssetImage("assets/images/slider2.jpg"),
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image(
                    image: AssetImage("assets/images/slider1.jpg"),
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image(
                    image: AssetImage("assets/images/slider3.jpg"),
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                  ),
                ])),
            Padding(
              padding:
                  EdgeInsets.only(top: 50, bottom: 50, left: 16, right: 16),
              child: Image(
                image: AssetImage("assets/images/newhome.jpg"),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 50, bottom: 50, left: 16, right: 16),
              child: Image(
                image: AssetImage("assets/images/wordcloud.png"),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 50, bottom: 50, left: 16, right: 16),
              child:
                  Image(image: AssetImage("assets/images/Presentation1.jpg")),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 100, bottom: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "What makes us Special",
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Color(0xffa29aac),
                                fontSize: 16,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                  //IconButton(
                  //alignment: Alignment.topCenter,
                  //icon: Image.asset(
                  //"assets/icons/home.png",
                  //width: 24,
                  //),
                  //onPressed: () {},
                  // )
                ],
              ),
            ),
            Container(
              height: 500,
              child: GridView.count(
                //     scrollDirection: Axis.horizontal,
                crossAxisCount: 1,
                childAspectRatio: 1.0,
                padding: EdgeInsets.only(left: 16, right: 16),
                children: List.generate(11, (index) {
                  return Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red[200].withOpacity(0.8),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(1, 1), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Card(
                        color: Color(0xFFFFFFFF),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  myList[index].img,
                                  height: 105,
                                  width: 110,
                                ),
                              ),
                              Container(
                                child: Text(
                                  myList[index].title,
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  myList[index].subtitle,
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400)),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Text(
                                myList[index].event,
                                style: GoogleFonts.openSans(
                                    textStyle: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 7,
                                        fontWeight: FontWeight.w600)),
                              ),
                            ]),
                      ));
                }),
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 50, bottom: 50),
                child: Center(
                    child: Text(
                  "Our Courses",
                  style: GoogleFonts.robotoCondensed(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ))),
            Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
              child: Card(
                color: Color(0xFFE4C2FD),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Nine()));
                  },
                  title: Center(
                      child: Text(
                    "Class 9 & Above",
                    style: TextStyle(color: Colors.indigo[900], fontSize: 22),
                  )),
                ),
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                child: Card(
                  color: Colors.blueAccent[100],
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Seven()));
                    },
                    title: Center(
                        child: Text(
                      "Class 7 & 8",
                      style: TextStyle(color: Colors.indigo[900], fontSize: 22),
                    )),
                  ),
                )),
            Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
              child: Card(
                color: Colors.yellowAccent[100],
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  title: Center(
                      child: Text(
                    "Class 5 & 6",
                    style: TextStyle(color: Colors.indigo[900], fontSize: 22),
                  )),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Five()));
                  },
                ),
              ),
            ),
            Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 50, bottom: 50),
                child: Center(
                    child: Text(
                  "What Parents Say",
                  style: GoogleFonts.robotoCondensed(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ))),
            SingleChildScrollView(
              child: Stack(
                children: <Widget>[
                  new Container(
                    child: new Column(
                      children: <Widget>[
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Image(
                                image: AssetImage("assets/images/T1.jpg"),
                                height: 260,
                                width: MediaQuery.of(context).size.width,
                              ),
                              Image(
                                image: AssetImage("assets/images/T2.jpg"),
                                height: 260,
                                width: MediaQuery.of(context).size.width,
                              ),
                              Image(
                                image: AssetImage("assets/images/T3.jpg"),
                                height: 260,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )

            /*  Expanded(
          child : GridView.count(
           crossAxisCount: 2,
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
        
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
             Container(
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
          }).toList()),)
           // Container(child :GridDashboard())
         ]))]))
          
       /*    child :
          ListView(
            
                
        children: <Widget>[
         
     /*Expanded(child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Flexible(child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Flexible(child:  Text(
                      "What makes us Special",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                  )),
                   Flexible(child: SizedBox(
                      height: 4,
                   )),
                     Flexible(child:  Text(
                    "",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Color(0xffa29aac),
                              fontSize: 18,
                              fontWeight: FontWeight.w600)),
                    )),
                  ],
                ),
                //IconButton(
                //alignment: Alignment.topCenter,
                //icon: Image.asset(
                //"assets/icons/home.png",
                //width: 24,
                //),
                //onPressed: () {},
                // )
              )],
            ),
          ),),*/*/
         Expanded(child:  GridDashboard()
         )],
      ),*/
          ]))
        ])));
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
