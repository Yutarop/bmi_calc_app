import 'package:bmi_calc_app/icon_bottom_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum GenderType {male, female,}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  GenderType? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      colour: selectedGender == GenderType.male ? kActiveCardColor : kInactiveCardColor,
                    cardChild: IconContent(iconText: 'MALE', iconShape: FontAwesomeIcons.mars, shouldApplyPadding: true,),
                    onPress: (){
                        setState(() {
                          selectedGender = GenderType.male;
                        });
                    }
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: selectedGender == GenderType.female ? kActiveCardColor : kInactiveCardColor,
                    cardChild: IconContent(iconText: 'FEMALE', iconShape: FontAwesomeIcons.venus, shouldApplyPadding: false,),
                    onPress: (){
                      setState(() {
                        selectedGender = GenderType.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      'HEIGHT',
                    style: kLabelTextStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kLabelTextStyleMiddle,
                      ),
                      Text(
                        ' cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.round();
                        });
                      },
                      min: 120.0,
                      max: 220.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColor,
                    cardChild: IconBottomContent(
                        iconText: 'WEIGHT',
                        shouldApplyUnit: true,
                        num: weight,
                        leftButtonFunc: () {
                          setState(() {
                            weight--;
                          });
                        },
                        rightButtonFunc: () {
                          setState(() {
                            weight++;
                          });
                        })
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColor,
                    cardChild: IconBottomContent(
                        iconText: 'AGE',
                        shouldApplyUnit: false,
                        num: age,
                        leftButtonFunc: () {
                          setState(() {
                            age--;
                          });
                        },
                        rightButtonFunc: () {
                          setState(() {
                            age++;
                          });
                        }),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      )
    );
  }
}


