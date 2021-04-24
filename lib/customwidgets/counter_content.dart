import 'package:flutter/cupertino.dart';

import '../constants.dart';
import '../input_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'RoundIcon.dart';

class CounterContent extends StatelessWidget {
  CounterContent({this.label, this.counter, this.add, this.sub});

  final String label;
  final int counter;
  final Function add;
  final Function sub;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: kLabelStyle,
        ),
        Text(
          counter.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onClick: sub,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onClick: add,
            ),
          ],
        ),
      ],
    );
  }
}
