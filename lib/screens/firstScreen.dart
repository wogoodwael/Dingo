// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toku/screens/NumberScreen.dart';
import 'package:toku/screens/colorScreen.dart';
import 'package:toku/screens/family.dart';
import 'package:toku/screens/numbers.dart';
import 'package:toku/screens/phrases.dart';
import 'package:toku/widgets/Container.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff4da),
      appBar: AppBar(
        backgroundColor: Color(0xff4a322b),
        title: Text("Toku "),
      ),
      body: Column(
        children: [
          CustomContainer(
            "Members",
            Color(0xfffa9532),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => NumberScreen()));
            },
          ),
          CustomContainer(
            
            "Family Members",
            
            Color(0xff538033),
            onTap: (){
               Navigator.push(
                  context, MaterialPageRoute(builder: (_) => FamilyScreen()));
           
            },
          ),
          CustomContainer(
            "Colors",
            Color(0xff7e3fa3),
            onTap: () {
                  Navigator.push(
                  context, MaterialPageRoute(builder: (_) => ColorScreen()));
            },
          ),
          CustomContainer(
            "phrases ",
            Color(0xff48a5cc),
            onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (_) => PhrasesScreen()));
            },
          )
        ],
      ),
    );
  }
}
