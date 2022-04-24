// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calc/main.dart';
import 'package:flutter/material.dart';
import 'my_container.dart';
import 'my_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender = GenderType.male;

  // Color maleCardColor = activCardColor;
  // Color femaleCardColor = activCardColor;

  // void updateColor(GenderType gender) {
  //   if (gender == GenderType.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activCardColor;
  //       femaleCardColor = inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //   if (gender == GenderType.female) {
  //     if (femaleCardColor == inactiveCardColor) {
  //       femaleCardColor = activCardColor;
  //       maleCardColor = inactiveCardColor;
  //     } else {
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeColor,
      appBar: AppBar(
        backgroundColor: themeColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = GenderType.male;
                          });
                        },
                        child: MyContainer(
                          contColor: selectedGender == GenderType.male
                              ? activCardColor
                              : inactiveCardColor,
                          cardChild: MyIcons(
                              label: "MALE", myIcon: FontAwesomeIcons.mars),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = GenderType.female;
                          });
                        },
                        child: MyContainer(
                          contColor: selectedGender == GenderType.female
                              ? activCardColor
                              : inactiveCardColor,
                          cardChild: MyIcons(
                              label: "FEMALE", myIcon: FontAwesomeIcons.venus),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: MyContainer(
                  contColor: activCardColor,
                  cardChild: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyIcons(label: "Slide", myIcon: FontAwesomeIcons.slash),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: MyContainer(
                        contColor: activCardColor,
                        cardChild: Container(),
                      ),
                    ),
                    Expanded(
                      child: MyContainer(
                        contColor: activCardColor,
                        cardChild: Container(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum GenderType {
  male,
  female,
}
