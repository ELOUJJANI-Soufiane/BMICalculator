// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'constant.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;

  final onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10),
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
      ),
    );
  }
}
