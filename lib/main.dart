import 'file:///D:/1Flutter_Project/bmi_calculator/lib/screens/result_screen.dart';
import 'package:flutter/material.dart';

import 'screens/input_screen.dart';

void main() => runApp(BmiCalculator());

class BmiCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /*
      initialRoute: '/', //If there is initialRoute don't do home or vise versa
      routes: {
        '/': (context) => DefaultScreen(),
        '/first': (context) => FirstScreen()
        '/second': (context) => SecondScreen()
      },*/
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
      home: InputScreen(),
    );
  }
}
