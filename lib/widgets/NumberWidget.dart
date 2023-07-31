import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/NumberModel.dart';

class NumberWigeht extends StatelessWidget {
  NumberWigeht({required this.numberModel});
  final NumberModel numberModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Color(0xfffa9532),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 100,
            color: Color(0xfffff6dc),
            child: Image.asset(numberModel.img),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(numberModel.WordsNameJpanes,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              Text(numberModel.WordsNameEnglish,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              AudioCache player = AudioCache(prefix: "assets/sounds/numbers");
              player.play(numberModel.SoundApp);
            },
            icon: Icon(Icons.play_arrow),
          )
        ],
      ),
    );
  }
}
