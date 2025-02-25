import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  double? _bmi;

  String calculateBMI() {
    double bmi = weight / pow(height/100, 2);
    _bmi = bmi;
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
      if (_bmi! >= 25) {
        return 'Overweight';
      } else if (_bmi! > 18.5) {
        return 'Normal';
      } else {
        return 'Underweight';
      }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You\'re overweight. What are you doing? Do some exercise.';
    } else if (_bmi! > 18.5) {
      return 'You\'re so normal. Do whatever you want.';
    } else {
      return 'Wow. You should eat more. Otherwise, you\'re gonna ...';
    }
  }
}