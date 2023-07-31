import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/NumberModel.dart';
import 'package:toku/widgets/NumberWidget.dart';

class NumberScreen extends StatelessWidget {
  NumberScreen();
  final List<NumberModel> numbers_list = [
    NumberModel(
        SoundApp: 'number_one_sound.mp3',
        WordsNameEnglish: 'one',
        WordsNameJpanes: 'ichi ',
        img: 'assets/images/numbers/number_one.png'),
    NumberModel(
        SoundApp: 'number_one_sound.mp3',
        WordsNameEnglish: 'two',
        WordsNameJpanes: 'ichi ',
        img: 'assets/images/numbers/number_one.png'),
    NumberModel(
        SoundApp: 'number_one_sound.mp3',
        WordsNameEnglish: 'one',
        WordsNameJpanes: 'ichi ',
        img: 'assets/images/numbers/number_one.png'),
    NumberModel(
        SoundApp: 'number_one_sound.mp3',
        WordsNameEnglish: 'one',
        WordsNameJpanes: 'ichi ',
        img: 'assets/images/numbers/number_one.png'),
    NumberModel(
        SoundApp: 'number_one_sound.mp3',
        WordsNameEnglish: 'one',
        WordsNameJpanes: 'ichi ',
        img: 'assets/images/numbers/number_one.png'),
    NumberModel(
        SoundApp: 'number_one_sound.mp3',
        WordsNameEnglish: 'one',
        WordsNameJpanes: 'ichi ',
        img: 'assets/images/numbers/number_one.png'),
    NumberModel(
        SoundApp: 'number_one_sound.mp3',
        WordsNameEnglish: 'one',
        WordsNameJpanes: 'ichi ',
        img: 'assets/images/numbers/number_one.png'),
    NumberModel(
        SoundApp: 'number_one_sound.mp3',
        WordsNameEnglish: 'one',
        WordsNameJpanes: 'ichi ',
        img: 'assets/images/numbers/number_one.png'),
    NumberModel(
        SoundApp: 'number_one_sound.mp3',
        WordsNameEnglish: 'one',
        WordsNameJpanes: 'ichi ',
        img: 'assets/images/numbers/number_one.png'),
    NumberModel(
        SoundApp: 'number_one_sound.mp3',
        WordsNameEnglish: 'one',
        WordsNameJpanes: 'ichi ',
        img: 'assets/images/numbers/number_one.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: numbers_list.length,
        itemBuilder: (context, i) {
        return NumberWigeht(
          numberModel: numbers_list[i],
        );
      }),
    );
  }
}
