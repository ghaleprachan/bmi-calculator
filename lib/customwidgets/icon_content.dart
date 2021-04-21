import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.myIcon, this.myLabel});

  final IconData myIcon;
  final String myLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myIcon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          myLabel,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white38,
          ),
        )
      ],
    );
  }
}
