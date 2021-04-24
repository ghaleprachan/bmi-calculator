import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/clickable_container.dart';

class ResultScreen extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String resultInterpretation;

  ResultScreen(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.resultInterpretation});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12, top: 20),
              child: Text(
                'Your Result',
                style: kNumberTextStyle,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: kActiveCardColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                margin: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kLabelStyle2,
                    ),
                    Text(
                      bmiResult,
                      style: kNumberTextStyle2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        resultInterpretation,
                        style: kLabelStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ClickableContainer(
              label: "RE-CALCULATE",
              onClick: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
