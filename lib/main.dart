import 'package:flutter/material.dart';
import 'appColors.dart';
import 'input_page.dart';

Appcolors appColors = Appcolors();

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: appColors.appTheme,
    );
  }
}
