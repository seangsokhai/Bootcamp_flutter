import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({
    required this.height,
    required this.weight,
  });

  double? _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Uderweight';
    }
  }
  
  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You hav a higher than normal body weight. Try to exercise more.';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'you have a lower than normal body weight. You can eat a bit more';
    }
  }
}