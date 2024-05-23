import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constants/color_constants.dart';
import 'package:my_portfolio/core/constants/texts.dart';
import 'package:my_portfolio/presentation/about_me/widgets/second_page.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
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
                          Expanded(
                              child: Container(
                                  // color: Colors.white,

                                  child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              // Text(
                              //   "FLUTTER DEVELOPER",
                              //   style: TextStyle(
                              //       color: Colors.orange,
                              //       fontWeight: FontWeight.bold,
                              //       fontSize: 30),
                              // ),
                              Text(
                                  "Hello! I'm Akhila, an enthusiastic Flutter developer with a passion for creating beautiful, high-performance mobile applications. With a keen interest in Flutter's approach to cross-platform development, I am dedicated to mastering this powerful framework. My journey with Flutter began out of a fascination with its ability to build natively compiled applications from a single codebase.",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.white, fontSize: 18))

                                  // TextStyle(
                                  //     color: Colors.white, fontSize: 18),
                                  ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                  "Over the past months, I have honed my skills through various projects, showcasing my commitment to clean code, intuitive UI/UX design, and efficient functionality. As a lifelong learner, I constantly explore the latest advancements in Flutter and Dart, experimenting with new widgets, integrating innovative libraries, and optimizing app performance.",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.white, fontSize: 18))),
                              SizedBox(
                                height: 20,
                              ),

                              Text(
                                  "When I'm not coding, I enjoy tech blogs, attending Flutter meetups, and contributing to the Flutter community. I'm driven by a desire to create impactful solutions and continuously grow as a developer.",
                                  textAlign: TextAlign.justify,
                                  style: GoogleFonts.openSans(
                                      textStyle: TextStyle(
                                          color: Colors.white, fontSize: 18)))
                            ],
                          )
                                  // AnimatedTextKit(
                                  //   animatedTexts: [
                                  //     FadeAnimatedText(
                                  //       "FLUTTER DEVELOPER",
                                  //       textStyle: TextStyle(
                                  //           color: Colors.orange,
                                  //           fontSize: 25,
                                  //           fontWeight: FontWeight.bold),
                                  //     ),
                                  //     ScaleAnimatedText(
                                  //         "Hello! I'm [Your Name], an enthusiastic Flutter developer with a passion for creating beautiful, high-performance mobile applications. With a keen interest in Flutter's approach to cross-platform development, I am dedicated to mastering this powerful framework. My journey with Flutter began out of a fascination with its ability to build natively compiled applications from a single codebase.Over the past [number] years, I have honed my skills through various projects, showcasing my commitment to clean code, intuitive UI/UX design, and efficient functionality. As a lifelong learner, I constantly explore the latest advancements in Flutter and Dart, experimenting with new widgets, integrating innovative libraries, and optimizing app performance.When I'm not coding, I enjoy tech blogs, attending Flutter meetups, and contributing to the Flutter community. I'm driven by a desire to create impactful solutions and continuously grow as a developer.Lets build somethng amazing together!",
                                  //         duration: Duration(milliseconds: 4000),
                                  //         textAlign: TextAlign.start,
                                  //         textStyle: TextStyle(
                                  //             color: Colors.white,
                                  //              fontSize: 19)

                                  //              )
                                  //   ],
                                  //   isRepeatingAnimation: false,
                                  //   displayFullTextOnTap: true,
                                  //   totalRepeatCount: 1,
                                  // ),
                                  )),
                          SizedBox(
                            width: 100,
                          ),
                        ],
                      ),
                      // ------------------------------------------------------

                      SizedBox(
                        height: 150,
                      ),

                      // Container(
                      //   height: 100,
                      //   decoration: BoxDecoration(
                      //       border: Border.all(color: Colors.orange, width: 2)),
                      //   child: Center(
                      //     child: AnimatedTextKit(animatedTexts: [
                      //       WavyAnimatedText(
                      //           "I dont just code,I paint them with flutter",
                      //           textStyle: TextStyle(
                      //               color: Colors.orange, fontSize: 30))
                      //     ]),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 150,
                      // ),

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
