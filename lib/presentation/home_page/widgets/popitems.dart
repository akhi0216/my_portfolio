import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopItems extends StatefulWidget {
  const PopItems({super.key});

  @override
  State<PopItems> createState() => _PopItemsState();
}

class _PopItemsState extends State<PopItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(),
        ListTile(),
        ListTile(),
      ],
    );
  }
}
