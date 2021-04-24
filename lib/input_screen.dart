import 'customwidgets/clickable_container.dart';
import 'file:///D:/1Flutter_Project/bmi_calculator/lib/customwidgets/reuseable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/customwidgets/counter_content.dart';
import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'customwidgets/icon_content.dart';
import 'constants.dart';

enum Gender { Male, Female }

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Gender selectedGender;
  int height = 150;
  int weight = 60;
  int age = 21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.Male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    childWidget: IconContent(
                      myIcon: FontAwesomeIcons.mars,
                      myLabel: "MALE",
                    ),
                    function: () {
                      setState(() {
                        selectedGender = Gender.Male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.Female
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    childWidget: IconContent(
                      myIcon: FontAwesomeIcons.venus,
                      myLabel: "FEMALE",
                    ),
                    function: () {
                      setState(() {
                        selectedGender = Gender.Female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kSliderActive,
                      inactiveTrackColor: kSliderInActive,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: Color(0xffeb1555),
                      overlayColor: Color(0x29eb1555),
                      trackHeight: 1,
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
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    childWidget: CounterContent(
                      label: "WEIGHT",
                      counter: weight,
                      sub: () {
                        setState(() {
                          weight--;
                        });
                      },
                      add: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    childWidget: CounterContent(
                      label: "AGE",
                      counter: age,
                      sub: () {
                        setState(() {
                          age--;
                        });
                      },
                      add: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          ClickableContainer(
            label: "CALCULATE",
            onClick: () {
              /*Navigator.pushNamed(context, '/first');*/
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
