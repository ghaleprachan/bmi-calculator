import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customwidgets/clickable_container.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        /*appBar: AppBar(
          title: Text("BMI Calculator"),
        ),*/
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12),
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
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [],
                ),
              ),
            ),
            ClickableContainer(
              label: "RE-CALCULATE",
              onClick: () {},
            ),
          ],
        ),
      ),
    );
  }
}


