import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/pharases.dart';

class PhrasesContainer extends StatelessWidget {
  PhrasesContainer({  required this.pherases});
  final Pherases pherases;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: Color(0xff52afd6),
        child: Row(
          children: [

            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  pherases.JpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  pherases.enName,
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
                    AudioCache(prefix: 'assets/sounds/phrases/');
                player.play(pherases.sound);
              },
            )
          ],
        ));
  }
}
