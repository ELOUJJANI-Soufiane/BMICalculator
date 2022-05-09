// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_print, prefer_typing_uninitialized_variables, non_constant_identifier_names
import 'package:bmi_calc/main.dart';
import 'package:bmi_calc/result_page.dart';
import 'package:flutter/material.dart';
import 'bottom_button.dart';
import 'my_container.dart';
import 'my_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constant.dart';
import 'base_container.dart';
import 'calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender = GenderType.male;
  int height = 180;
  int weight = 60;
  int age = 30;
  String weightTitle = "WEIGHT";
  String ageTitle = "AGE";
  String weightValue = "Kg";

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumbText,
                            ),
                            Text(
                              "cm",
                              style: kLabelTextStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            inactiveTrackColor: Color(0xff8d8e98),
                            activeTrackColor: Colors.white,
                            thumbColor: kBottomContainerColor,
                            overlayColor: Color.fromARGB(124, 235, 21, 85),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.toInt();
                              });
                            },
                          ),
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
                        cardChild: BsContainer(
                          onPressedPlus: () {
                            setState(() {
                              weight++;
                            });
                          },
                          onPressedMinus: () {
                            setState(() {
                              weight--;
                            });
                          },
                          value: weightValue,
                          title: weightTitle,
                          txt: weight,
                        ),
                      ),
                    ),
                    Expanded(
                      child: MyContainer(
                        onPress: () {},
                        contColor: kInactivCardColor,
                        cardChild: BsContainer(
                          onPressedPlus: () {
                            setState(() {
                              age++;
                            });
                          },
                          onPressedMinus: () {
                            setState(() {
                              age--;
                            });
                          },
                          txt: age,
                          value: "Y",
                          title: ageTitle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BottomButton(
                onTap: () {
                  CalculatorBrain calc = CalculatorBrain(height, weight);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        bmiResult: calc.calculateBmi(),
                        resultText: calc.getResult(),
                        interpretation: calc.getInterpretation(),
                      ),
                    ),
                  );
                },
                title: "CALCULATE",
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
