import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:toku/screens/NumberScreen.dart';
import 'package:toku/screens/colorScreen.dart';
import 'package:toku/screens/family.dart';
import 'package:toku/screens/homeScreen.dart';
import 'package:toku/screens/numbers.dart';
import 'package:toku/screens/phrases.dart';

class NavigatorScreen extends StatefulWidget {
  const NavigatorScreen();

  @override
  State<NavigatorScreen> createState() => _NavigatorScreenState();
}

class _NavigatorScreenState extends State<NavigatorScreen> {
  int _selectedIndex = 0;

  List Options = [PhrasesScreen(), ColorScreen(), FamilyScreen(), Numbers()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // print(_selectedIndex);
    });
  }

  Color? changeColor() {
    if (_selectedIndex == 0) {
      return Color(0xff52afd6);
    } else if (_selectedIndex == 1) {
      return Color(0xff7e3fa3);
    } else if (_selectedIndex == 2) {
      return Color(0xff537d32);
    } else if (_selectedIndex == 3) {
      return Color(0xfffa9532);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Center(
          child: Container(
        child: Options.elementAt(_selectedIndex),
      )),
      bottomNavigationBar: CurvedNavigationBar(
        items: const <Widget>[
          Icon(
            Icons.home_rounded,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.color_lens,
            size: 30,
            color: Colors.white,
          ), //local activity
          Icon(
            Icons.family_restroom_outlined,
            size: 30,
            color: Colors.white,
          ), //activity
          Icon(
            Icons.onetwothree_sharp,
            size: 40,
            color: Colors.white,
          ), //settings
        ],
        letIndexChange: (index) => true,
        index: _selectedIndex,
        buttonBackgroundColor: changeColor(),
        backgroundColor: Colors.transparent,
        color: changeColor() ?? Colors.white,
        onTap: _onItemTapped,
        height: 50,
        animationCurve: Curves.ease,
      ),
    );
  }
}
