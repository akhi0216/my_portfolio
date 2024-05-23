import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle {
  static TextStyle name = GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.orange, fontSize: 45, fontWeight: FontWeight.bold));
  static TextStyle subname = GoogleFonts.poppins(
      textStyle: TextStyle(
          color: Colors.white, fontSize: 37, fontWeight: FontWeight.bold));

  static TextStyle normaltext = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: Colors.white,
    fontSize: 35,
  ));

  static TextStyle greytext = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: Colors.grey,
    fontSize: 30,
  ));

  static TextStyle cursivetext = GoogleFonts.poppins(
      textStyle: TextStyle(color: Colors.white, fontSize: 60));

  static TextStyle insidetext = GoogleFonts.openSans(
      textStyle: TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold));
  static TextStyle insideblacktext = GoogleFonts.openSans(
      textStyle: TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold));
  static TextStyle insidegreytext = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: Colors.grey,
    fontSize: 15,
  ));
  static TextStyle insidesecondblacktext = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: Colors.white,
    fontSize: 15,
  ));

  static TextStyle insidewhitetext = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: Colors.white,
    fontSize: 15,
  ));

  static TextStyle appbartext = GoogleFonts.poppins(
      textStyle: TextStyle(
    color: Colors.white,
    fontSize: 15,
  ));
}
