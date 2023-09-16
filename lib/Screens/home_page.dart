import 'package:flutter/material.dart';
import 'package:speakfree/Screens/FamilyPage.dart';
import 'package:speakfree/Screens/Numbers_page.dart';
import 'package:speakfree/Screens/color_Page.dart';
import 'package:speakfree/Screens/pharases_Page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Toku"),
        centerTitle: true,
      ),
      body: Column(children: [
        Category(
          text: "Numbers",
          color: Color(0xffFF9F3B),
          onTapFun: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return NumberScreen();
                },
              ),
            );
          },
        ),
        Category(
          text: "Family Members",
          color: Color(0xff5D8B3E),
          onTapFun: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return familyPage();
                },
              ),
            );
          },
        ),
        Category(
          text: "Colors",
          color: Color(0xff854CAE),
          onTapFun: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return colorPage();
                },
              ),
            );
          },
        ),
        Category(
          text: "Pharases",
          color: Color(0xff51B0D4),
          onTapFun: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return pharasesPage();
                },
              ),
            );
          },
        ),
      ]),
    );
  }
}
