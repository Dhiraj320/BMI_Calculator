import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return '"Overweight"';
    } else if (_bmi > 18.5) {
      return '"Normal"';
    } else {
      return '"Underweight"';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '"You are not Fit, \n You need to lose weight"';
    } else if (_bmi > 18.5) {
      return '"You are Fit, \n Keep it up! " ';
    } else {
      return '"You are not Fit, \n You need to gain weight" ';
    }
  }
}
