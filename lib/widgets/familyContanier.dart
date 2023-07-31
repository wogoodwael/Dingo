import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/family.dart';

class FamilyContainer extends StatelessWidget {
   FamilyContainer({required this.family});
 final Family family; 

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 100,
        color: Color(0xff537d32),
        child: Row(
          children: [
            Container(color: Color(0xffFFF6DC), child: Image.asset(family.img)),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  family.JpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  family.enName,
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
                AudioCache player = AudioCache(prefix: 'assets/sounds/family_members/');
                player.play(family.sound);
              },
            )
          ],
        ));
  }
}