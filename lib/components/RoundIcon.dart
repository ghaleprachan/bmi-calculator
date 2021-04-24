import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onClick});

  final Function onClick;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      shape: CircleBorder(),
      fillColor: kIconColor,
      elevation: 6,
      onPressed: onClick,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
