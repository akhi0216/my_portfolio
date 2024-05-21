// // import 'package:flutter/cupertino.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';
// // import 'package:flutter/widgets.dart';
// import 'package:my_portfolio/core/constants/color_constants.dart';
// import 'package:my_portfolio/core/constants/texts.dart';

// import 'package:my_portfolio/presentation/home_page/widgets/first_page.dart';
// import 'package:my_portfolio/presentation/home_page/widgets/second_page.dart';
// import 'package:my_portfolio/presentation/home_page/widgets/third_page.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // bool isExpanded = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorConstants.mainBlack,
//       // appBar: AppBar(
//       //   title: Text("aa"),
//       // ),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return SingleChildScrollView(
//             // scrollDirection: Axis.horizontal,
//             child: Column(
//               children: [
//                 // -------------------------------------------first page

//                 FirstPage(),
//                 // ----------------------------------------end of first page

//                 SizedBox(
//                   height: 200,
//                 ),
//                 // -------------------------------------second page
//                 SecondPage(),
//                 // ----------------------------------end of second page

//                 SizedBox(
//                   height: 100,
//                 ),
//                 // --------------------------------third page
//                 Text("PORTFOLIO", style: MyTextStyle.cursivetext),
//                 SizedBox(
//                   height: 100,
//                 ),

//                 //  ***************
//                 // ThirdPage(),

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     // first container
//                     Container(
//                       height: 200,
//                       width: 150,
//                       child: CarouselSlider(
//                         items: [
//                           Image.asset(
//                               "assets/images/WhatsApp Image 2024-05-20 at 14.23.08_3216463d.jpg"),
//                           Image.asset(
//                               "assets/images/WhatsApp Image 2024-05-20 at 14.27.38_21b89899.jpg")
//                         ],
//                         options: CarouselOptions(
//                           autoPlayAnimationDuration: Duration(seconds: 1),
//                           autoPlay: true,
//                           viewportFraction: 1,
//                           height: MediaQuery.of(context).size.height,
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Container(
//                       height: 200,
//                       width: 150,
//                       child: CarouselSlider(
//                         items: [
//                           Image.asset(
//                               "assets/images/WhatsApp Image 2024-05-20 at 14.23.08_3216463d.jpg"),
//                           Image.asset(
//                               "assets/images/WhatsApp Image 2024-05-20 at 14.27.38_21b89899.jpg")
//                         ],
//                         options: CarouselOptions(
//                           autoPlayAnimationDuration: Duration(seconds: 1),
//                           autoPlay: true,
//                           viewportFraction: 1,
//                           height: MediaQuery.of(context).size.height,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),

//                 // ------------
//                 //
//                 //
//                 // -------------

//                 Container(
//                   color: Colors.amber,
//                   height: constraints.maxHeight * 0.7,
//                   // height: 400,
//                   width: constraints.maxWidth,
//                 ),
//                 Container(
//                   // height: 400,
//                   color: Colors.red,
//                   height: constraints.maxHeight * 0.7,
//                   width: constraints.maxWidth,
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constants/color_constants.dart';
import 'package:my_portfolio/core/constants/texts.dart';
import 'package:my_portfolio/presentation/home_page/widgets/first_page.dart';
import 'package:my_portfolio/presentation/home_page/widgets/second_page.dart';
import 'package:my_portfolio/presentation/home_page/widgets/third_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                // --------------------first page
                FirstPage(),
                SizedBox(height: 200),

                // -------------------second
                SecondPage(),
                SizedBox(height: 100),
                // --------------------------------third
                ThirdPage(),
                // ----------------------------------------fourth

                SizedBox(height: 100),
                Text(
                  "KEEP IN TOUCH",
                  style: MyTextStyle.cursivetext,
                ),

                Container(
                  height: constraints.maxHeight * 0.7,
                  width: constraints.maxWidth,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange,
                        Color.fromARGB(255, 222, 69, 61),
                        Colors.orange,
                        Color.fromARGB(255, 222, 69, 61),
                        Colors.orange,
                        Color.fromARGB(255, 222, 69, 61),
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
