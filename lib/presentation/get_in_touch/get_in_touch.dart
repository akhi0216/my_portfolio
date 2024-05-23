import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constants/color_constants.dart';
import 'package:my_portfolio/core/constants/texts.dart';
import 'package:my_portfolio/presentation/about_me/about_me.dart';
import 'package:my_portfolio/presentation/get_in_touch/widgets/fourth_page.dart';
import 'package:my_portfolio/presentation/home_page/home_page.dart';
import 'package:my_portfolio/presentation/home_page/widgets/third_page.dart';

class GetInTouch extends StatefulWidget {
  const GetInTouch({super.key});

  @override
  State<GetInTouch> createState() => _GetInTouchState();
}

class _GetInTouchState extends State<GetInTouch> {
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: FourthPagr(),
          );
        },
      ),
    );
  }
}
