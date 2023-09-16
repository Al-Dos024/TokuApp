// ignore_for_file: empty_constructor_bodies, must_be_immutable

import 'package:flutter/material.dart';
import 'package:speakfree/components/List_Item.dart';

import '../Models/numbers.dart';

class NumberScreen extends StatelessWidget {
  NumberScreen({super.key});
  final List<Item> numbers = [
    Item(
        img: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    Item(
        img: 'assets/images/numbers/number_two.png',
        jpName: 'ni',
        enName: 'two',
        sound: 'sounds/numbers/number_two_sound.mp3'),
    Item(
        img: 'assets/images/numbers/number_three.png',
        jpName: 'san',
        enName: 'three',
        sound: 'sounds/numbers/number_three_sound.mp3'),
    Item(
        img: 'assets/images/numbers/number_four.png',
        jpName: 'yon',
        enName: 'four',
        sound: 'sounds/numbers/number_four_sound.mp3'),
    Item(
        img: 'assets/images/numbers/number_five.png',
        jpName: 'go',
        enName: 'five',
        sound: 'sounds/numbers/number_five_sound.mp3'),
    Item(
        img: 'assets/images/numbers/number_six.png',
        jpName: 'roku',
        enName: 'six',
        sound: 'sounds/numbers/number_six_sound.mp3'),
    Item(
        img: 'assets/images/numbers/number_seven.png',
        jpName: 'nana',
        enName: 'seven',
        sound: 'sounds/numbers/number_seven_sound.mp3'),
    Item(
        img: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi',
        enName: 'eight',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    Item(
        img: 'assets/images/numbers/number_nine.png',
        jpName: 'ku',
        enName: 'nine',
        sound: 'sounds/numbers/number_nine_sound.mp3'),
    Item(
        img: 'assets/images/numbers/number_ten.png',
        jpName: 'juu',
        enName: 'ten',
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: numbers[index],
            color: Color(0xffFF9F3B),
          );
        },
      ),
    );
  }
}
