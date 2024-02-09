import 'package:flutter/material.dart';
import 'package:speakfree/Screens/FamilyPage.dart';
import 'package:speakfree/Screens/Numbers_page.dart';
import 'package:speakfree/Screens/color_Page.dart';
import 'package:speakfree/Screens/pharases_Page.dart';
import 'package:speakfree/widgets/mainitem.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "Toku",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return NumberScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffFF9F3B),
                      border: Border.all(),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  height: 150,
                  width: 340,
                  child: const Center(
                    child: Text(
                      "Numbers",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return familyPage();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff5D8B3E),
                      border: Border.all(),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  height: 150,
                  width: 340,
                  child: const Center(
                    child: Text(
                      "Family Members",
                      style: TextStyle(fontSize: 38),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return colorPage();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff854CAE),
                      border: Border.all(),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  height: 150,
                  width: 340,
                  child: const Center(
                    child: Text(
                      "Colors",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return pharasesPage();
                      },
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff51B0D4),
                      border: Border.all(),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  height: 150,
                  width: 340,
                  child: const Center(
                    child: Text(
                      "Pharases",
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//  body: Column(children: [
//         Category(
//           text: "Numbers",
//           color: const Color(0xffFF9F3B),
        //   onTapFun: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) {
        //           return NumberScreen();
        //         },
        //       ),
        //     );
        //   },
        // ),
//         Category(
//           text: "Family Members",
//           color: const Color(0xff5D8B3E),
//           onTapFun: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) {
//                   return familyPage();
//                 },
//               ),
//             );
//           },
//         ),
//         Category(
//           text: "Colors",
//           color: const Color(0xff854CAE),
//           onTapFun: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) {
//                   return colorPage();
//                 },
//               ),
//             );
//           },
//         ),
//         Category(
//           text: "Pharases",
//           color: const Color(0xff51B0D4),
//           onTapFun: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) {
//                   return pharasesPage();
//                 },
//               ),
//             );
//           },
//         ),
//       ]),