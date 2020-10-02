import 'package:e_learning/screens/home_screen.dart';
import 'package:e_learning/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Learning ',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: true,
      home: ImageSplashScreen(),
    );
  }
}
