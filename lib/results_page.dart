import 'package:flutter/material.dart';
    
class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'BMI CALCULATOR',
          style: TextStyle(
            fontFamily: 'Sigmar',
          ),
        ),
      ),
      body: Text('Hello'),
    );
  }
}
