import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/constants/color_constants.dart';
import 'package:my_portfolio/presentation/get_in_touch/widgets/fourth_page.dart';

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
