import 'package:flutter/material.dart';
import 'package:my_portfolio/presentation/about_me/about_me.dart';
import 'package:my_portfolio/presentation/home_page/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: AboutMe(),
    );
  }
}
