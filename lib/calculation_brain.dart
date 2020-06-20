import 'dart:math';

class CalculationBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculationBrain({this.height, this.weight});

  String calculateBMI() {
     _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getTextResult() {
    if (_bmi >= 25) {
      return "OverWeight";
    } else if (_bmi >= 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "you have a higher than normal body weight, try to exercise more";
    } else if (_bmi >= 18.5) {
      return "you have a Normal body weight ,good job";
    } else {
      return "you have a lower than normal body weight , you can eat a bit more";
    }
  }
}
