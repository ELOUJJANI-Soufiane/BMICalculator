// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:bmi_calc/main.dart';
import 'package:flutter/material.dart';
import 'my_container.dart';
import 'my_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constant.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender = GenderType.male;

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
                      child: MyContainer(
                        onPress: () {
                          setState(() {
                            selectedGender = GenderType.male;
                          });
                        },
                        contColor: selectedGender == GenderType.male
                            ? kActivCardColor
                            : kInactivCardColor,
                        cardChild: MyIcons(
                            label: "MALE", myIcon: FontAwesomeIcons.mars),
                      ),
                    ),
                    Expanded(
                      child: MyContainer(
                        onPress: () {
                          setState(() {
                            selectedGender = GenderType.female;
                          });
                        },
                        contColor: selectedGender == GenderType.female
                            ? kActivCardColor
                            : kInactivCardColor,
                        cardChild: MyIcons(
                            label: "FEMALE", myIcon: FontAwesomeIcons.venus),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: MyContainer(
                    onPress: () {},
                    contColor: kInactivCardColor,
                    cardChild: Column(
                      children: [
                        Text(
                          "Heigh",
                          style: labelTextStyle,
                        ),
                      ],
                    )),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: MyContainer(
                        onPress: () {},
                        contColor: kInactivCardColor,
                        cardChild: Container(),
                      ),
                    ),
                    Expanded(
                      child: MyContainer(
                        onPress: () {},
                        contColor: kInactivCardColor,
                        cardChild: Container(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.0),
                height: kBottomContainerHeight,
                color: kBottomContainerColor,
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
