import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/constants/color_constants.dart';
import 'package:my_portfolio/core/constants/texts.dart';
import 'package:my_portfolio/presentation/about_me/about_me.dart';
import 'package:my_portfolio/presentation/get_in_touch/get_in_touch.dart';
import 'package:my_portfolio/presentation/home_page/widgets/experience_page.dart';
import 'package:my_portfolio/presentation/home_page/widgets/first_page.dart';
import 'package:my_portfolio/presentation/home_page/widgets/third_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Scroll controller
  // final ScrollController _scrollController = ScrollController();

  // void _scrollToThirdPage() {
  //   _scrollController.animateTo(1000,
  //       duration: Duration(seconds: 3), curve: Curves.easeInOut);
  // }

  Future<void> navigateToPage(Widget page) async {
    await Future.delayed(
        Duration(milliseconds: 300)); // Small delay for splash effect
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        title: Text(
          "Hey There!",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold)),
        ),
        actions: [
          InkWell(
            onTap: () => navigateToPage(HomePage()),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Home",
                style: MyTextStyle.appbartext,
              ),
            ),
          ),
          SizedBox(width: 15),
          InkWell(
            onTap: () => navigateToPage(ThirdPage()),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Portfolio",
                style: MyTextStyle.appbartext,
              ),
            ),
          ),
          SizedBox(width: 15),
          InkWell(
            onTap: () => navigateToPage(ExperiencePage()),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Work Experience",
                style: MyTextStyle.appbartext,
              ),
            ),
          ),
          SizedBox(width: 15),
          InkWell(
            onTap: () => navigateToPage(AboutMe()),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "About Me",
                style: MyTextStyle.appbartext,
              ),
            ),
          ),
          SizedBox(width: 15),
          InkWell(
            onTap: () => navigateToPage(GetInTouch()),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Get In Touch",
                style: MyTextStyle.appbartext,
              ),
            ),
          ),
          SizedBox(width: 25),
        ],
      ),
      backgroundColor: ColorConstants.mainBlack,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            // controller: _scrollController,
            child: Column(
              children: [
                FirstPage(),
                SizedBox(height: 100),
              ],
            ),
          );
        },
      ),
    );
  }
}
