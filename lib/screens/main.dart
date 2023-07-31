// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:toku/screens/firstScreen.dart';
import 'package:toku/screens/splash.dart';

import 'homeScreen.dart';
import 'navigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'splash':(context) => SplashScreen(),
        'home':(context) => HomeScreen(),
        'nav':(context) => NavigatorScreen(),
      },
      home: SplashScreen(),
    );
  }
}
