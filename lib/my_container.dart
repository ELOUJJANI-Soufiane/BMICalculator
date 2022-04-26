// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  MyContainer({
    Key? key,
    required this.contColor,
    required this.cardChild,
    required this.onPress,
  }) : super(key: key);

  final Color contColor;
  final Widget cardChild;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: contColor,
        ),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
