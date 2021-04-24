import 'package:flutter/cupertino.dart';

import '../constants.dart';

class ClickableContainer extends StatelessWidget {
  final String label;
  final Function onClick;

  ClickableContainer({this.label, this.onClick})

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        color: kBottomContainerColor,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}