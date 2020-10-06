import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  void _launchEmail(String emailId) async {
    var url = "mailto:$emailId?subject= Feedback regarding App";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Please Log in With a Mail ID';
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                  child: Text(
                    "Contact Us",
                    style: TextStyle(color: Colors.black, fontSize: 22),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              width: 170.0,
              child: RaisedButton(
                onPressed: () {
                  _launchEmail('Support@aptismart.com');
                },
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.grey[400],
                child: new InkWell(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.email),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Container(
                        child: Text(
                          'E-Mail',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 0,
                            fontSize: 18.0,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              width: 170.0,
              child: RaisedButton(
                onPressed: () => launch("tel:+91 9711880114"),
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.red[400],
                child: new InkWell(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.phone),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Container(
                        child: Text(
                          'Phone',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 0,
                            fontSize: 18.0,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              width: 170.0,
              child: RaisedButton(
                onPressed: () =>
                    launch('https://api.whatsapp.com/send?phone=919711880114'),
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.green[400],
                child: new InkWell(
                  child: Row(
                    children: <Widget>[
                      Icon(MdiIcons.whatsapp),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Container(
                        child: Text(
                          'WhatsApp',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 0,
                            fontSize: 17.0,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              width: 170.0,
              child: RaisedButton(
                onPressed: () =>
                    launch('https://www.facebook.com/aptismartofficial'),
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.blue[400],
                child: new InkWell(
                  child: Row(
                    children: <Widget>[
                      Icon(MdiIcons.facebook),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Container(
                        child: Text(
                          'Facebook',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 0,
                            fontSize: 18.0,
                            fontFamily: 'OpenSans',
                          ),
                        ),
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
