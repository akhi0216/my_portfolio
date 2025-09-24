// ignore_for_file: prefer_const_constructors

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constants/color_constants.dart';
import 'package:my_portfolio/core/constants/texts.dart';
import 'package:my_portfolio/presentation/about_me/widgets/second_page.dart';
import 'package:my_portfolio/presentation/get_in_touch/get_in_touch.dart';
import 'package:my_portfolio/presentation/home_page/home_page.dart';
import 'package:my_portfolio/presentation/home_page/widgets/experience_page.dart';
import 'package:my_portfolio/presentation/home_page/widgets/third_page.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  void _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $urlString';
    }
  }

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
              // _scrollToThirdPage();
              // setState(() {});
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExperiencePage(),
                  ));
            },
            child: Text(
              "Work Experience",
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: AnimatedContainer(
                duration: Duration(seconds: 4),
                curve: Curves.decelerate,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 3)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150,
                      ),
                      // /------------------------
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                          ),
                          Expanded(
                              child: Container(
                                  // color: Colors.white,

                                  child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Hello,Welcome!",
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 13),
                              ),
                              SizedBox(
                                height: 5,
                              ),

                              Text(
                                "I'm Akhila M",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              Text(
                                  "An enthusiastic Flutter developer with a passion for creating beautiful, high-performance mobile applications. With a keen interest in Flutter's approach to cross-platform development, I am dedicated to mastering this powerful framework.",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.grey, fontSize: 15))

                                  // TextStyle(
                                  //     color: Colors.white, fontSize: 18),
                                  ),
                              // SizedBox(
                              //   height: 20,
                              // ),
                              // Text(
                              //     "I have honed my skills through various projects. As a lifelong learner, I constantly explore the latest advancements in Flutter and Dart, experimenting with new widgets, integrating innovative libraries, and optimizing app performance.",
                              //     textAlign: TextAlign.justify,
                              //     style: GoogleFonts.openSans(
                              //         textStyle: TextStyle(
                              //             color: Colors.white, fontSize: 18))),
                              SizedBox(
                                height: 20,
                              ),
                              Text("Lets build something amazing together.",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.white, fontSize: 16))),
                              SizedBox(
                                height: 5,
                              ),

                              InkWell(
                                onTap: () {
                                  _launchURL(
                                      "https://drive.google.com/file/d/1FdRl4TAHo85iSdRDf2TDFnibn1PTnOzW/view?usp=drive_links");
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Text(
                                    "DOWNLOAD CV",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ),
                              )
                            ],
                          ))),
                          SizedBox(
                            width: 100,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/meme.jpg"),
                                    fit: BoxFit.cover)),
                            height: 400,
                            // color: Colors.amber,
                            width: 400,
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          SizedBox(
                            width: 100,
                          ),
                        ],
                      ),
                      // ------------------------------------------------------

                      SizedBox(
                        height: 150,
                      ),

                      SecondPage(),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
