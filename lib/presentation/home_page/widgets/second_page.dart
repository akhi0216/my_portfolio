// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class SecondPage extends StatefulWidget {
//   const SecondPage({super.key});

//   @override
//   State<SecondPage> createState() => _SecondPageState();
// }

// class _SecondPageState extends State<SecondPage> {
//   int selectedindex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 300,
//       child: ListView.separated(
//           shrinkWrap: true,
//           scrollDirection: Axis.horizontal,
//           itemBuilder: (context, index) => InkWell(
//                 onTap: () {
//                   selectedindex = index;
//                   setState(() {});
//                 },
//                 child: Container(
//                   height: selectedindex == index ? 200 : 250,
//                   width: selectedindex == index ? 300 : 250,
//                   color: selectedindex == index
//                       ? Colors.orange
//                       : Color.fromARGB(255, 40, 38, 38),
//                 ),
//               ),
//           separatorBuilder: (context, index) => SizedBox(
//                 width: 15,
//               ),
//           itemCount: 3),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            height: selectedIndex == index ? 250 : 200,
            width: selectedIndex == index ? 300 : 230,
            color: selectedIndex == index
                ? Colors.orange
                : Color.fromARGB(255, 32, 31, 31),
            child: Center(
              child: Text(
                'Item $index',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: selectedIndex == index ? 24 : 16,
                  fontWeight: selectedIndex == index
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(
          width: 15,
        ),
        itemCount: 3,
      ),
    );
  }
}
