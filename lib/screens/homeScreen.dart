// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: ExactAssetImage(
                'assets/images/flag_japan.png',
              ),
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              backgroundImage: ExactAssetImage(
                'assets/images/family.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
