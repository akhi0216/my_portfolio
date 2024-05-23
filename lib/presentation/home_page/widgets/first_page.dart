import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:my_portfolio/core/constants/imageconstants.dart';
import 'package:my_portfolio/core/constants/texts.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    String name =
        "A Flutter Developer with a passion for devleoping scalable mobile applications with a strong problem-solving skills and a focus on writing read and maintainable code";
    String newName = '"$name"';
    return
        // height: constraints.maxHeight * 0.7,

        // width: constraints.maxWidth,

        Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
        ),
        Text(
          "Akhila M",
          style: MyTextStyle.name,
        ),
        Text(
          "An Enthusiastic",
          style: MyTextStyle.subname,
        ),
        Text(
          "Flutter Developer",
          style: MyTextStyle.name,
        ),
        // Container(
        //   height: 175,
        //   width: 175,
        //   decoration: BoxDecoration(
        //       border: Border.all(color: Colors.orange, width: 3),
        //       borderRadius: BorderRadius.circular(100)),
        //   child: Container(
        //     height: 169,
        //     width: 169,
        //     decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(100),
        //         image: DecorationImage(
        //             image: AssetImage(
        //                 "assets/images/WhatsApp Image 2024-05-20 at 14.23.08_3216463d.jpg"),
        //             fit: BoxFit.fill)),
        //   ),
        // )

        CircleAvatar(
          radius: 78,
          backgroundColor: Colors.orange,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 75,
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/me.jpg"

                  // "assets/images/WhatsApp Image 2024-05-16 at 12.18.17_9bb9010d.jpg"
                  ),
            ),
          ),
        ),

        SizedBox(
          height: 95,
        ),

        // ================2

        // lottie
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // SizedBox(
            //   width: 100,
            // ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(newName,

                        // "A Flutter Developer with a passion for devleoping scalable mobile applications with a strong problem-solving skills and a focus on writing read and maintainable code",
                        textAlign: TextAlign.center,
                        textStyle: TextStyle(
                            fontFamily: 'poppins',
                            color: Colors.white,
                            fontSize: 30),
                        speed: Duration(milliseconds: 40))
                  ],
                  totalRepeatCount: 1,
                  stopPauseOnTap: true,
                  displayFullTextOnTap: true,
                  pause: Duration(milliseconds: 2),
                ),
              ),
            ),
          ],
        ),

        // Text(" I dont just code apps, I paint them with flutter",
        //     style: MyTextStyle.greytext)

        // ----------------------2

        // SizedBox(
        //   height: 300,
        //   width: 300,
        //   child: ListView.separated(
        //     itemCount: 2,
        //     scrollDirection: Axis.horizontal,
        //     shrinkWrap: true,
        //     itemBuilder: (context, index) => Container(
        //       height: 300,
        //       width: 300,
        //       color: Colors.white,
        //       child: Column(
        //         children: [
        //           Icon(
        //             Icons.abc,
        //             color: Colors.orange,
        //           )
        //         ],
        //       ),
        //     ),
        //     separatorBuilder: (context, index) => SizedBox(
        //       width: 10,
        //     ),
        //   ),
        // )
      ],
      // ),
    );
  }
}
