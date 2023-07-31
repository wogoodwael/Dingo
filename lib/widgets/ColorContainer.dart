import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../models/colors.dart';

class ColorContainer extends StatelessWidget {
   ColorContainer({Key? key, required this.color}) : super(key: key);
  final ColorModel color;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: Color(0xff7e3fa3),
        child: Row(
          children: [
            Container(color: Color(0xffFFF6DC), child: Image.asset(color.img)),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  color.JpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  color.enName,
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
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/colors/');
                player.play(color.sound);
              },
            )
          ],
        ));
  }
}
