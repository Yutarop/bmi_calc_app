import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 60.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum GenderType {male, female,}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  GenderType? selectedGender;

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
                      colour: selectedGender == GenderType.male ? activeCardColor : inactiveCardColor,
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
                    colour: selectedGender == GenderType.female ? activeCardColor : inactiveCardColor,
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
            child: ReusableCard(colour: inactiveCardColor,),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: inactiveCardColor,),
                ),
                Expanded(
                  child: ReusableCard(colour: inactiveCardColor,),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      )
    );
  }
}
