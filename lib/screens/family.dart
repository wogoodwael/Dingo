import 'package:flutter/material.dart';
import 'package:toku/models/family.dart';
import 'package:toku/widgets/familyContanier.dart';

class FamilyScreen extends StatelessWidget {
  FamilyScreen({Key? key}) : super(key: key);
  final List<Family> family = const [
    Family(
        sound: 'father.wav',
        img: 'assets/images/family_members/family_father.png',
        JpName: 'Chichioya',
        enName: 'Father'),
    Family(
        sound: 'daughter.wav',
        img: 'assets/images/family_members/family_daughter.png',
        JpName: 'Musuem',
        enName: 'Daughter'),
    Family(
        sound: 'grand father.wav',
        img: 'assets/images/family_members/family_grandfather.png',
        JpName: 'Ojisan',
        enName: 'GrandFather'),
    Family(
        sound: 'mother.wav',
        img: 'assets/images/family_members/family_mother.png',
        JpName: 'Hahaoya',
        enName: 'Mother'),
    Family(
        sound: 'grand mother.wav',
        img: 'assets/images/family_members/family_grandmother.png',
        JpName: 'O bachan',
        enName: 'Grand Mother '),
    Family(
        sound: 'older bother.wav',
        img: 'assets/images/family_members/family_older_brother.png',
        JpName: 'Roku',
        enName: 'Older Brother '),
    Family(
        sound: 'older sister.wav',
        img: 'assets/images/family_members/family_older_sister.png',
        JpName: 'Ane ',
        enName: 'Older Sister '),
    Family(
        sound: 'son.wav',
        img: 'assets/images/family_members/family_son.png',
        JpName: 'Musuko',
        enName: 'Son'),
    Family(
        sound: 'younger brohter.wav',
        img: 'assets/images/family_members/family_younger_brother.png',
        JpName: 'ototo',
        enName: 'Younger Brother '),
    Family(
        sound: 'younger sister.wav',
        img: 'assets/images/family_members/family_younger_sister.png',
        JpName: 'Imoto',
        enName: 'Younger Sister '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Family Members  "),
        //   backgroundColor: Color(0xff46322B),
        // ),
        body: ListView.builder(
            itemCount: family.length,
            itemBuilder: (context, index) {
              return FamilyContainer(
                family: family[index],
              );
            }));
  }
}
