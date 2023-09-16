import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:speakfree/Models/numbers.dart';

import '../Models/pharases.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.number, required this.color});
  final Item number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(children: [
        Container(
          color: Color(0xffFFF6DC),
          child: Image.asset(number.img),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.jpName,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              number.enName,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
        Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: GestureDetector(
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(
                  AssetSource(number.sound),
                );
              },
              icon: Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        )
      ]),
    );
  }
}

////////////////////////////////////////
//        same as listview Builder
// but the listview builder is better becuse the listview build all
// at one time , the builder build what on the screen frist so
// its help use less resource.

List<Widget> getList(List<Item> numbers) {
  List<Widget> itemList = [];
  for (int i = 0; i < numbers.length; i++) {
    itemList.add(ListItem(
      number: numbers[i],
      color: Color(0xffEF9235),
    ));
  }
  return itemList;
}

//////////////////////////////////////
class Pharases_Item extends StatelessWidget {
  Pharases_Item({super.key, required this.pharase, required this.color});
  final pharases pharase;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(children: [
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              pharase.jpName,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              pharase.enName,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
        Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: GestureDetector(
            child: IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(
                  AssetSource(pharase.sound),
                );
              },
              icon: Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
