import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constants/color_constants.dart';
import 'package:my_portfolio/core/constants/texts.dart';

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
      // appBar: AppBar(
      //   title: Text("aa"),
      // ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            // scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                // -------------------------------------------first page
                Container(
                  height: constraints.maxHeight * 0.7,
                  // height: 400,
                  width: constraints.maxWidth,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                            backgroundImage: AssetImage(
                                "assets/images/WhatsApp Image 2024-05-16 at 12.18.17_9bb9010d.jpg"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                // ----------------------------------------end of first page
                Container(
                  // height: 400,
                  color: Colors.red,
                  height: constraints.maxHeight * 0.7,
                  width: constraints.maxWidth,
                ),
                Container(
                  color: Colors.amber,
                  height: constraints.maxHeight * 0.7,
                  // height: 400,
                  width: constraints.maxWidth,
                ),
                Container(
                  // height: 400,
                  color: Colors.red,
                  height: constraints.maxHeight * 0.7,
                  width: constraints.maxWidth,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
