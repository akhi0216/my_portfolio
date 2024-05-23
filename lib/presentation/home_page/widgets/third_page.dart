// import 'package:animated_text_kit/animated_text_kit.dart';
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constants/color_constants.dart';
import 'package:my_portfolio/core/constants/imageconstants.dart';
import 'package:my_portfolio/core/constants/texts.dart';
import 'package:my_portfolio/presentation/about_me/about_me.dart';
import 'package:my_portfolio/presentation/get_in_touch/get_in_touch.dart';
import 'package:my_portfolio/presentation/home_page/home_page.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,

        // centerTitle: true,
        title: Text(
          "Hey There!",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold)),
        ),

        actions: [
          // onTap:() => _scrollToSecondPage,
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
            child: Text(
              "Home",
              style: MyTextStyle.appbartext,
            ),
          ),

          SizedBox(
            width: 15,
          ),

          InkWell(
            onTap: () {
              // _scrollToThirdPage();
              // setState(() {});
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ThirdPage(),
                  ));
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
            width: 25,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ------------------------------
            Text("PORTFOLIO", style: MyTextStyle.name),

            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // First container
                Container(
                  height: 350,
                  width: 270,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Car Rental App",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CarouselSlider(
                        items: [
                          Image.asset(
                            Imageconstants.v1,
                          ),
                          Image.asset(Imageconstants.v2),
                          Image.asset(Imageconstants.v3),
                          // Image.network(
                          //     "https://images.pexels.com/photos/20717340/pexels-photo-20717340/free-photo-of-a-dark-sky-with-a-lighthouse-and-a-beach.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          // Image.network(
                          //     "https://images.pexels.com/photos/21550531/pexels-photo-21550531/free-photo-of-a-window-with-a-view-of-the-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          viewportFraction: 1,
                          height: 300,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                // Second container
                Container(
                  height: 350,
                  width: 270,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Quiz Application",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CarouselSlider(
                        items: [
                          // Image.network(
                          //     "https://images.pexels.com/photos/23985550/pexels-photo-23985550/free-photo-of-a-windmill-in-the-fog-with-a-tree-in-the-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          // Image.network(
                          //     "https://images.pexels.com/photos/20717340/pexels-photo-20717340/free-photo-of-a-dark-sky-with-a-lighthouse-and-a-beach.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          // Image.network(
                          //     "https://images.pexels.com/photos/21550531/pexels-photo-21550531/free-photo-of-a-window-with-a-view-of-the-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")

                          Image.asset(Imageconstants.q1),
                          Image.asset(Imageconstants.q2),
                          Image.asset(Imageconstants.q3),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          viewportFraction: 1,
                          height: 300,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                // Third container
                Container(
                  height: 350,
                  width: 270,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Olx Clone",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CarouselSlider(
                        items: [
                          // Image.network(
                          //     "https://images.pexels.com/photos/23985550/pexels-photo-23985550/free-photo-of-a-windmill-in-the-fog-with-a-tree-in-the-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          // Image.network(
                          //     "https://images.pexels.com/photos/20717340/pexels-photo-20717340/free-photo-of-a-dark-sky-with-a-lighthouse-and-a-beach.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          // Image.network(
                          //     "https://images.pexels.com/photos/21550531/pexels-photo-21550531/free-photo-of-a-window-with-a-view-of-the-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")
                          Image.asset(Imageconstants.o1),
                          Image.asset(Imageconstants.o2),
                          Image.asset(Imageconstants.o3),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          viewportFraction: 1,
                          height: 300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),

            // ---------------------------2nd row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // First container
                Container(
                  height: 350,
                  width: 270,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Note Application",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CarouselSlider(
                        items: [
                          // Image.network(
                          //     "https://images.pexels.com/photos/20717340/pexels-photo-20717340/free-photo-of-a-dark-sky-with-a-lighthouse-and-a-beach.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          // Image.network(
                          //     "https://images.pexels.com/photos/21550531/pexels-photo-21550531/free-photo-of-a-window-with-a-view-of-the-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")

                          Image.asset(Imageconstants.note1),
                          Image.asset(Imageconstants.note2),
                          Image.asset(Imageconstants.note3),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          viewportFraction: 1,
                          height: 300,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                // Second container
                Container(
                  height: 350,
                  width: 270,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Netflix Clone",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CarouselSlider(
                        items: [
                          // Image.network(
                          //     "https://images.pexels.com/photos/23985550/pexels-photo-23985550/free-photo-of-a-windmill-in-the-fog-with-a-tree-in-the-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          // Image.network(
                          //     "https://images.pexels.com/photos/20717340/pexels-photo-20717340/free-photo-of-a-dark-sky-with-a-lighthouse-and-a-beach.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          // Image.network(
                          //     "https://images.pexels.com/photos/21550531/pexels-photo-21550531/free-photo-of-a-window-with-a-view-of-the-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")
                          Image.asset(Imageconstants.n1),
                          Image.asset(Imageconstants.n2),
                          Image.asset(Imageconstants.n3),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          viewportFraction: 1,
                          height: 300,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                // Third container
                Container(
                  height: 350,
                  width: 270,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Todo Application",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      CarouselSlider(
                        items: [
                          // Image.network(
                          //     "https://images.pexels.com/photos/23985550/pexels-photo-23985550/free-photo-of-a-windmill-in-the-fog-with-a-tree-in-the-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          // Image.network(
                          //     "https://images.pexels.com/photos/20717340/pexels-photo-20717340/free-photo-of-a-dark-sky-with-a-lighthouse-and-a-beach.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          // Image.network(
                          //     "https://images.pexels.com/photos/21550531/pexels-photo-21550531/free-photo-of-a-window-with-a-view-of-the-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")

                          Image.asset(Imageconstants.t1),
                          Image.asset(Imageconstants.t2),
                          Image.asset(Imageconstants.t3),
                        ],
                        options: CarouselOptions(
                          autoPlay: true,
                          autoPlayAnimationDuration: Duration(seconds: 1),
                          viewportFraction: 1,
                          height: 300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
