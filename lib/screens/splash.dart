import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, 'nav');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 800,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash.jpg"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
