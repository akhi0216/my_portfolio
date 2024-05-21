// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:my_portfolio/core/constants/color_constants.dart';

import 'package:my_portfolio/presentation/home_page/widgets/first_page.dart';
import 'package:my_portfolio/presentation/home_page/widgets/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // bool isExpanded = false;
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

                FirstPage(),
                // ----------------------------------------end of first page

                SizedBox(
                  height: 100,
                ),
                // -------------------------------------second page
                SecondPage(),
                // ----------------------------------end of second page

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
