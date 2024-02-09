

import 'package:flutter/material.dart';
import 'package:speakfree/Models/numbers.dart';
import 'package:speakfree/components/List_Item.dart';

class colorPage extends StatelessWidget {
  colorPage({super.key});
  final List<Item> Color_List = [
    Item(
        img: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'Black',
        sound: 'sounds/colors/black.wav'),
    Item(
        img: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown',
        sound: 'sounds/colors/brown.wav'),
    Item(
        img: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'Dusty Yellow',
        sound: 'sounds/colors/dusty_yellow.wav'),
    Item(
        img: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'Gray',
        sound: 'sounds/colors/gray.wav'),
    Item(
        img: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green',
        sound: 'sounds/colors/green.wav'),
    Item(
        img: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red',
        sound: 'sounds/colors/red.wav'),
    Item(
        img: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White',
        sound: 'sounds/colors/white.wav'),
    Item(
        img: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'Yellow',
        sound: 'sounds/colors/yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colors"),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: Color_List.length,
        itemBuilder: (context, index) {
          return ListItem(
            number: Color_List[index],
            color: Colors.deepPurpleAccent,
          );
        },
      ),
    );
  }
}
