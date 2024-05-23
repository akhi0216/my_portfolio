// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class SecondPage extends StatefulWidget {
//   const SecondPage({super.key});

//   @override
//   State<SecondPage> createState() => _SecondPageState();
// }

// class _SecondPageState extends State<SecondPage> {
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return

//     SizedBox(
//       height: 300,
//       child: ListView.separated(
//         shrinkWrap: true,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) => InkWell(
//           onTap: () {
//             setState(() {
//               selectedIndex = index;
//             });
//           },
//           child: AnimatedContainer(
//             duration: Duration(milliseconds: 300),
//             curve: Curves.easeInOut,
//             height: selectedIndex == index ? 250 : 200,
//             width: selectedIndex == index ? 300 : 230,
//             color: selectedIndex == index
//                 ? Colors.orange
//                 : Color.fromARGB(255, 32, 31, 31),
//             child: Center(
//               child: Text(
//                 'Item $index',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: selectedIndex == index ? 24 : 16,
//                   fontWeight: selectedIndex == index
//                       ? FontWeight.bold
//                       : FontWeight.normal,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         separatorBuilder: (context, index) => SizedBox(
//           width: 15,
//         ),
//         itemCount: 3,
//       ),
//     );
//   }
// }
// --------------------------------------

//  GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             isExpanded = !isExpanded;
//                           });
//                         },
//                         child: AnimatedContainer(
//                           duration: Duration(milliseconds: 500),
//                           curve: Curves.easeInOut,
//                           height: isExpanded ? 150 : 100, // Adjust height based on animation
//                           width: isExpanded ? 150 : 100, // Adjust width based on animation
//                           child: CircleAvatar(
//                             backgroundColor: Colors.orange,
//                             backgroundImage: AssetImage(
//                               "assets/images/WhatsApp Image 2024-05-16 at 12.18.17_9bb9010d.jpg",
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/texts.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool isexpanded = false;
  bool isexpandedtwo = false;
  bool isexpandedthree = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isexpanded = !isexpanded;
            });
          },
          child: AnimatedContainer(
            padding: EdgeInsets.all(10),
            color: Color.fromARGB(255, 32, 31, 31),
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            height: isexpanded ? 250 : 200,
            width: isexpanded ? 250 : 200,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.notes_rounded,
                  color: Colors.orange,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "UI/UX Designer",
                  style: MyTextStyle.insidetext,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Figma",
                  style: MyTextStyle.insidegreytext,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 35,
        ),
        // ------------------------------------------second row
        GestureDetector(
          onTap: () {
            setState(() {
              isexpandedtwo = !isexpandedtwo;
            });
          },
          child: AnimatedContainer(
            padding: EdgeInsets.all(10),
            color: Colors.orange,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            height: isexpandedtwo ? 250 : 200,
            width: isexpandedtwo ? 250 : 200,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.flutter_dash_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Flutter Developer",
                  style: MyTextStyle.insideblacktext,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Dart,Git,Provider",
                  style: MyTextStyle.insidesecondblacktext,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 35,
        ),

        // ------------------------------------------------------------third row
        GestureDetector(
          onTap: () {
            setState(() {
              isexpandedthree = !isexpandedthree;
            });
          },
          child: AnimatedContainer(
            padding: EdgeInsets.all(10),
            color: Color.fromARGB(255, 32, 31, 31),
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            height: isexpandedthree ? 250 : 200,
            width: isexpandedthree ? 250 : 200,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.desktop_windows,
                  color: Colors.orange,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Research & Development",
                  style: MyTextStyle.insidetext,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Self-Leaning",
                  style: MyTextStyle.insidegreytext,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
