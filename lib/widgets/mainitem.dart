import 'package:flutter/material.dart';

class MainItem extends StatelessWidget {
  const MainItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffFF9F3B),
            border: Border.all(),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        height: 150,
        width: 340,
        child: const Center(
          child: Text(
            "Numbers",
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
