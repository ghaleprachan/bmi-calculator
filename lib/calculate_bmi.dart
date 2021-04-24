import 'dart:math';

class CalculateBmi {
  CalculateBmi({this.height, this.weight});

  double _bmi;
  final int height;
  final int weight;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResults() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight. Try more exercise.";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight.\nGood job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}
