import 'package:flutter/material.dart';
import 'package:toku/models/pharases.dart';
import 'package:toku/widgets/pherasesContainer.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen();
  final List<Pherases> pherases = const [
    Pherases(
        sound: 'are_you_coming.wav',
        JpName: 'Mara , jikoba ga jiko',
        enName: 'Are You Coming '),
    Pherases(
        sound: 'dont_forget_to_subscribe.wav',
        JpName: 'kodoku surukotowo wasure naidekud',
        enName: 'Dont forget to describe '),
    Pherases(
        sound: 'how_are_you_feeling.wav',
        JpName: 'Go kibun haikagadesuka',
        enName: 'how are u feeling '),
    Pherases(
        sound: 'i_love_anime.wav',
        JpName: 'Anime diasuki',
        enName: 'i love anime'),
    Pherases(
        sound: 'programming_is_easy.wav',
        JpName: 'puroguramingu ha kantan',
        enName: 'programming is easy '),
    Pherases(
        sound: 'what_is_your_name.wav',
        JpName: 'Anatano namae ha ',
        enName: 'What is Your name ?'),
    Pherases(
        sound: 'where_are_you_going.wav',
        JpName: 'Dokohe iku nda',
        enName: 'where are you going '),
    Pherases(
        sound: 'yes_im_coming.wav',
        JpName: 'Hai Iku',
        enName: 'yes I’m Coming '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        
        itemCount: pherases.length,
        itemBuilder: (context, index) {
        return PhrasesContainer(pherases: pherases[index]);
      }),
    );
  }
}
