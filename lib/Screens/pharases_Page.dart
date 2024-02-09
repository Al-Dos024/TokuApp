import 'package:flutter/material.dart';
import 'package:speakfree/Models/pharases.dart';
import 'package:speakfree/components/List_Item.dart';



class pharasesPage extends StatelessWidget {
  pharasesPage({super.key});
  final List<pharases> pharases_List = [
    pharases(
        jpName: 'Ködoku suru koto o wasurenaide kudasai',
        enName: 'dont forget to subscribe',
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    pharases(
        jpName: 'Watashi wa puroguramingu daisukidesu',
        enName: 'i love programming',
        sound: 'sounds/phrases/i_love_programming.wav'),
    pharases(
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'programming is easy',
        sound: 'sounds/phrases/programming_is_easy.wav'),
    pharases(
        jpName: 'Doko.nltuno',
        enName: 'where are you going',
        sound: 'sounds/phrases/where_are_you_going.wav'),
    pharases(
        jpName: 'Namae wa nandesu ka',
        enName: 'whatis your.name?',
        sound: 'sounds/phrases/what_is_your_name.wav'),
    pharases(
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'i love anime',
        sound: 'sounds/phrases/i_love_anime.wav'),
    pharases(
        jpName: 'Go kibun wa ikagadesu ka',
        enName: 'how are you feeling?',
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    pharases(
        jpName: 'Bukkorosu',
        enName: "Hahahahaha...I'll murder you!",
        sound: 'sounds/phrases/Gojo-hahaha.mp3'),
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
        itemCount: pharases_List.length,
        itemBuilder: (context, index) {
          return Pharases_Item(
            pharase: pharases_List[index],
            color: Colors.blue,
          );
        },
      ),
    );
  }
}
