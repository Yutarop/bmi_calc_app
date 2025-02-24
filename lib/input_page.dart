import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 60.0;
const reusableCardColor = 0xFF1D1E33;
const bottomContainerColor = 0xFFEB1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                      colour: Color(reusableCardColor),
                    cardChild: IconContent(iconText: 'MALE', iconShape: FontAwesomeIcons.mars, shouldApplyPadding: true,),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(reusableCardColor),
                    cardChild: IconContent(iconText: 'FEMALE', iconShape: FontAwesomeIcons.venus, shouldApplyPadding: false,),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: Color(reusableCardColor),),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: Color(reusableCardColor),),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(reusableCardColor),),
                ),
              ],
            ),
          ),
          Container(
            color: Color(bottomContainerColor),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],

      )
    );
  }
}
