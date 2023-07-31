// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:toku/widgets/numbersContainer.dart';

import '../models/number.dart';

class Numbers extends StatelessWidget {
  const Numbers({Key? key}) : super(key: key);
  final List<Number> numbers = const [
    Number(
        sound: 'number_one_sound.mp3',
        img: 'assets/images/numbers/number_one.png',
        JpName: 'Ichi',
        enName: 'one'),
    Number(
        sound: 'number_two_sound.mp3',
        img: 'assets/images/numbers/number_two.png',
        JpName: 'Ni',
        enName: 'two'),
    Number(
        sound: 'number_three_sound.mp3',
        img: 'assets/images/numbers/number_three.png',
        JpName: 'Mittsu',
        enName: 'three'),
    Number(
        sound: 'number_four_sound.mp3',
        img: 'assets/images/numbers/number_four.png',
        JpName: 'Shi',
        enName: 'four'),
    Number(
        sound: 'number_five_sound.mp3',
        img: 'assets/images/numbers/number_five.png',
        JpName: 'Go',
        enName: 'five'),
    Number(
        sound: 'number_six_sound.mp3',
        img: 'assets/images/numbers/number_six.png',
        JpName: 'Roku',
        enName: 'six'),
    Number(
        sound: 'number_seven_sound.mp3',
        img: 'assets/images/numbers/number_seven.png',
        JpName: 'sebun',
        enName: 'seven'),
    Number(
        sound: 'number_eight_sound.mp3',
        img: 'assets/images/numbers/number_eight.png',
        JpName: 'Hachi',
        enName: 'eigh'),
    Number(
        sound: 'number_nine_sound.mp3',
        img: 'assets/images/numbers/number_nine.png',
        JpName: 'Kyu',
        enName: 'nine'),
    Number(
        sound: 'number_ten_sound.mp3',
        img: 'assets/images/numbers/number_ten.png',
        JpName: 'JU',
        enName: 'ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Numbers "),
        //   backgroundColor: Color(0xff46322B),
        // ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, i) {
              return NumbersContainer(number: numbers[i]);
            }));
  }
}
