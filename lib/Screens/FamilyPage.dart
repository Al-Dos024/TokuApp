import 'package:flutter/material.dart';

import '../Models/numbers.dart';
import '../components/List_Item.dart';

class familyPage extends StatelessWidget {
  familyPage({super.key});
  final List<Item> FamilyMember = [
    Item(
        img: 'assets/images/family_members/family_father.png',
        jpName: 'chichioya',
        enName: 'father',
        sound: 'sounds/family_members/thoriffn_father.mp3'),
    Item(
        img: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    Item(
        img: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojisan',
        enName: 'grandfather',
        sound: 'sounds/family_members/grand_father.wav'),
    Item(
        img: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo',
        enName: 'grandmother',
        sound: 'sounds/family_members/grand_mother.wav'),
    Item(
        img: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume',
        enName: 'daughter',
        sound: 'sounds/family_members/daughter.wav'),
    Item(
        img: 'assets/images/family_members/family_son.png',
        jpName: 'musuko',
        enName: 'son',
        sound: 'sounds/family_members/son.wav'),
    Item(
        img: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'otōto',
        enName: 'younger brother',
        sound: 'sounds/family_members/younger_brohter.wav'),
    Item(
        img: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imōto',
        enName: 'younger sister',
        sound: 'sounds/family_members/younger_sister.wav'),
    Item(
        img: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'older brother',
        sound: 'sounds/family_members/older_bother.wav'),
    Item(
        img: 'assets/images/family_members/family_older_sister.png',
        jpName: 'ane',
        enName: 'older sister',
        sound: 'sounds/family_members/older_sister.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Member"),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: FamilyMember.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: FamilyMember[index],
            color: Color(0xff5D8B3E),
          );
        },
      ),
    );
  }
}
