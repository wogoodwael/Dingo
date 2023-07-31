// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';

class NumbersContainer extends StatelessWidget {
  const NumbersContainer({required this.number});
  final Number number;


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: Color(0xfffa9532),
        child: Row(
          children: [
            Container(color: Color(0xffFFF6DC), child: Image.asset(number.img)),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.JpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            Spacer(
              flex: 1,
            ),
            IconButton(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                AudioCache player = AudioCache(prefix: 'assets/sounds/numbers/');
                player.play(number.sound);
              },
            )
          ],
        ));
  }
}
