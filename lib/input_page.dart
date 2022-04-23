// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:bmi_calc/main.dart';
import 'package:flutter/material.dart';
import 'my_container.dart';
import 'my_icon.dart';

const activCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = activCardColor;
  Color femaleCardColor = activCardColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
  }

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
                            updateColor(1);
                          });
                        },
                        child: MyContainer(
                            contColor: maleCardColor,
                            cardChild:
                                MyIcons(label: "MALE", myIcon: Icons.male)),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updateColor(1);
                          });
                        },
                        child: MyContainer(
                          contColor: femaleCardColor,
                          cardChild:
                              MyIcons(label: "FEMALE", myIcon: Icons.female),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: MyContainer(
                  contColor: activCardColor,
                  cardChild: Container(),
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
