// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'constant.dart';

class MyIcons extends StatelessWidget {
  MyIcons({Key? key, required this.label, required this.myIcon})
      : super(key: key);

  final String label;
  final IconData myIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(myIcon, size: 80),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
