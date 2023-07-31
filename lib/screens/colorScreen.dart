import 'package:flutter/material.dart';
import 'package:toku/widgets/ColorContainer.dart';

import '../models/colors.dart';

class ColorScreen extends StatelessWidget {
  ColorScreen();
  final List<ColorModel> colors = const [
    ColorModel(
        sound: 'black.wav',
        img: 'assets/images/colors/color_black.png',
        JpName: 'Dorako',
        enName: 'Black'),
    ColorModel(
        sound: 'brown.wav',
        img: 'assets/images/colors/color_brown.png',
        JpName: 'Chairo',
        enName: 'Brown'),
    ColorModel(
        sound: 'dusty yellow.wav',
        img: 'assets/images/colors/color_dusty_yellow.png',
        JpName: 'Hokori Kiiro',
        enName: 'dusty yellow'),
    ColorModel(
        sound: 'gray.wav',
        img: 'assets/images/colors/color_gray.png',
        JpName: 'Gure',
        enName: 'Grey'),
    ColorModel(
        sound: 'green.wav',
        img: 'assets/images/colors/color_green.png',
        JpName: 'midori',
        enName: 'Green '),
    ColorModel(
        sound: 'red.wav',
        img: 'assets/images/colors/color_red.png',
        JpName: 'Aka',
        enName: 'Red '),
    ColorModel(
        sound: 'white.wav',
        img: 'assets/images/colors/color_white.png',
        JpName: 'Shiro ',
        enName: 'White '),
    ColorModel(
        sound: 'yellow.wav',
        img: 'assets/images/colors/yellow.png',
        JpName: 'kiiro',
        enName: 'Yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   title: Text("colors "),
      //   backgroundColor: Color(0xff46322B),
      // ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return ColorContainer(color: colors[index]);
          }),
    );
  }
}
