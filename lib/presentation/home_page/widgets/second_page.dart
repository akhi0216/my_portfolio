import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Container(
                height: 300,
                width: 300,
                color: Colors.orange,
              ),
          separatorBuilder: (context, index) => SizedBox(
                width: 15,
              ),
          itemCount: 3),
    );
  }
}
