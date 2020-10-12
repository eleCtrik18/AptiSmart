import 'dart:async';
import 'package:aptismart/screens/new_login.dart';
import 'package:aptismart/services/phone_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ImageSplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<ImageSplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AuthService().handleAuth(),
        ));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.grey[400]),
            child: new Image.asset(
              'assets/logo/logo.png',
              height: 100.0,
            ),
          ),
          SizedBox(height: 30.0),
          SpinKitRipple(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
