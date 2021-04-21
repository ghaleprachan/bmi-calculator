import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BmiCalculator());

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My BMI Calculator",
      theme: ThemeData(
        primaryColor: Color(0xff24263B), // Primary color
        accentColor: Colors.purple, // Floating btn colors
        scaffoldBackgroundColor: Color(0xff1D2136),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
        // brightness: Brightness.light, // Dark or light theme
      ),
      home: InputPage(),
    );
  }
}
