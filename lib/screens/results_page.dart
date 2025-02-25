import 'package:bmi_calc_app/constants.dart';
import 'package:bmi_calc_app/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calc_app/calculator_brain.dart';
    
class ResultsPage extends StatelessWidget {

  ResultsPage({required this.bmiResult, required this.resultText, required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                    'Your Result',
                  style: kLabelTextResult,
                  textAlign: TextAlign.center,
                ),
              ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisSize: MainAxisSize.center,
                  children: [
                    Text(
                        resultText.toUpperCase(),
                      style: kTitleTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kResultBMIStyle,
                    ),
                    Text(
                      interpretation,
                      style: kResultTextBMI,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
          ),
          Expanded(
            flex: 1,
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5.0),
                  color: kBottomContainerColor,
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  // height: kBottomContainerHeight,
                  child: Center(
                    child: Text(
                      'RE-CALCULATE',
                      style: kLabelTextStyleBottom,
                    ),
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
