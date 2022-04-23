// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  MyContainer({
    Key? key,
    required this.contColor,
    required this.cardChild,
  }) : super(key: key);

  final Color contColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: contColor,
      ),
      margin: EdgeInsets.all(10),
    );
  }
}
