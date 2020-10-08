import 'package:e_learning/screens/home_screen.dart';
import 'package:e_learning/screens/phone_verification.dart';
import 'package:e_learning/services/googlesignin.dart';
import 'package:e_learning/services/phone_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFBDBDBD),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFBDBDBD),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.0, vertical: 6.0),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 28),
                  ),
                ),
              ),
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFBDBDBD),
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
              width: 130.0,
              child: RaisedButton(
                onPressed: () => {
                  signInWithGoogle().then((value) => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen())))
                },
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.red[200],
                child: new InkWell(
                  child: Row(
                    children: <Widget>[
                      Icon(MdiIcons.google),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Container(
                        child: Text(
                          'Google',
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
            Column(
              children: <Widget>[
                Text(
                  "- OR -",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w400),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25.0),
              width: 130.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Phone()));
                },
                padding: EdgeInsets.all(15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                color: Colors.teal[200],
                child: new InkWell(
                  child: Row(
                    children: <Widget>[
                      Icon(MdiIcons.phone),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Container(
                        child: Text(
                          'Mobile',
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
