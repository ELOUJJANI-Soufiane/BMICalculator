// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'constant.dart';
import 'package:flutter/material.dart';
import 'round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BsContainer extends StatelessWidget {
  const BsContainer({
    Key? key,
    required this.txt,
    required this.value,
    required this.title,
    required this.onPressedPlus,
    required this.onPressedMinus,
  }) : super(key: key);

  final int txt;
  final String value;
  final String title;
  final onPressedPlus;
  final onPressedMinus;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              txt.toString(),
              style: kNumbText,
            ),
            Text(value),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
              onPressed: onPressedMinus,
              icon: FontAwesomeIcons.minus,
            ),
            SizedBox(
              width: 10,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: onPressedPlus,
            ),
          ],
        ),
      ],
    );
  }
}
