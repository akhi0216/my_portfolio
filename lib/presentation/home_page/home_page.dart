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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constants/color_constants.dart';
import 'package:my_portfolio/core/constants/texts.dart';
import 'package:my_portfolio/presentation/about_me/about_me.dart';
import 'package:my_portfolio/presentation/get_in_touch/get_in_touch.dart';
import 'package:my_portfolio/presentation/home_page/widgets/first_page.dart';
import 'package:my_portfolio/presentation/get_in_touch/widgets/fourth_page.dart';
import 'package:my_portfolio/presentation/home_page/widgets/popitems.dart';
import 'package:my_portfolio/presentation/about_me/widgets/second_page.dart';
import 'package:my_portfolio/presentation/home_page/widgets/third_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // scroll controller
  final ScrollController _scrollController = ScrollController();
  void _scrollToThirdPage() {
    _scrollController.animateTo(1000,
        duration: Duration(seconds: 3), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,

        // centerTitle: true,
        title: Text(
          "Hey There!",
          style: GoogleFonts.dancingScript(
              textStyle: TextStyle(
                  fontSize: 35,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold)),
        ),

        actions: [
          // onTap:() => _scrollToSecondPage,

          Text(
            "Home",
            style: MyTextStyle.appbartext,
          ),
          SizedBox(
            width: 15,
          ),

          InkWell(
            onTap: () {
              _scrollToThirdPage();
              setState(() {});
            },
            child: Text(
              "Portfolio",
              style: MyTextStyle.appbartext,
            ),
          ),

          SizedBox(
            width: 15,
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutMe(),
                  ));
            },
            child: Text(
              "About Me",
              style: MyTextStyle.appbartext,
            ),
          ),

          SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GetInTouch(),
                  ));
            },
            child: Text(
              "Get In Touch",
              style: MyTextStyle.appbartext,
            ),
          ),
          SizedBox(
            width: 7,
          )
        ],
        // actions: [
        //   Container(
        //     height: 30,
        //     width: 30,
        //     decoration: BoxDecoration(
        //         image: DecorationImage(
        //             image: AssetImage("assets/images/github.png"),
        //             fit: BoxFit.contain),
        //         borderRadius: BorderRadius.circular(100),
        //         color: Colors.white),
        //   ),

        //   SizedBox(
        //     width: 16,
        //   ),
        //   Container(
        //     height: 30,
        //     width: 30,
        //     decoration: BoxDecoration(
        //         image: DecorationImage(
        //             image: AssetImage("assets/images/linkedin-big-logo.png"),
        //             fit: BoxFit.fill),
        //         borderRadius: BorderRadius.all(Radius.circular(3)),
        //         color: Colors.white),
        //   ),
        //   // CircleAvatar(
        //   //   radius: 20,
        //   //   backgroundColor: Colors.white,
        //   //   child: CircleAvatar(
        //   //     radius: 18,
        //   //     backgroundImage:
        //   //         AssetImage("assets/images/linkedin-big-logo.png"),
        //   //   ),
        //   // ),
        //   SizedBox(
        //     width: 16,
        //   ),
        //   Container(
        //     height: 20,
        //     width: 30,
        //     decoration: BoxDecoration(
        //         image: DecorationImage(
        //             image: AssetImage("assets/images/email.png"),
        //             fit: BoxFit.cover),
        //         borderRadius: BorderRadius.all(Radius.circular(2)),
        //         color: Colors.white),
        //   ),
        //   // CircleAvatar(
        //   //   radius: 20,
        //   //   backgroundColor: Colors.white,
        //   //   child: CircleAvatar(
        //   //     radius: 18,
        //   //     backgroundImage: AssetImage("assets/images/email.png"),
        //   //   ),
        //   // ),
        //   SizedBox(
        //     width: 16,
        //   ),
        //   Container(
        //     height: 30,
        //     width: 30,
        //     decoration: BoxDecoration(
        //         image: DecorationImage(
        //             image: AssetImage("assets/images/instagram.png"),
        //             fit: BoxFit.contain),
        //         borderRadius: BorderRadius.all(Radius.circular(2)),
        //         color: Colors.white),
        //   ),
        //   // CircleAvatar(
        //   //   radius: 20,
        //   //   backgroundColor: Colors.white,
        //   //   child: CircleAvatar(
        //   //     radius: 18,
        //   //     backgroundImage: AssetImage("assets/images/instagram.png"),
        //   //   ),
        //   // ),
        //   SizedBox(
        //     width: 20,
        //   ),
        // ],
      ),
      backgroundColor: ColorConstants.mainBlack,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                // --------------------first page
                FirstPage(),
                SizedBox(height: 100),

                // -------------------second
                // SecondPage(),
                // SizedBox(height: 100),
                // --------------------------------third
                ThirdPage(),
                // ----------------------------------------fourth

                FourthPagr()
                //  =-----------------------------------------

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       "Connect Me Through",
                //       style: MyTextStyle.insidewhitetext,
                //     ),
                //     SizedBox(
                //       width: 2,
                //     ),

                // IconButton(
                //     onPressed: () {
                //       showModalBottomSheet(
                //         context: context,
                //         builder: (context) =>

                //         Column(
                //           children: [CircleAvatar(), CircleAvatar()],
                //         ),
                //       );
                //     },
                //     icon: Icon(
                //       Icons.arrow_circle_right,
                //       color: Colors.orange,
                //     ))

                // PopupMenuButton(
                //   onSelected: (value) {
                //     switch (value) {
                //       case 0:
                //         print("icon 1 clicked");
                //         break;
                //     }
                //   },
                //   icon: Icon(
                //     Icons.arrow_circle_right,
                //     color: Colors.orange,
                //   ),
                //   itemBuilder: (context) => [
                //     PopupMenuItem(
                //         value: 0, child: Icon(Icons.heart_broken)),
                //     // PopupMenuItem(child: Icon(Icons.home))
                //   ],
                // )
                //   ],
                // )

                // SizedBox(
                //   height: 100,
                // )
              ],
            ),
          );
        },
      ),
    );
  }
}
