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
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              weight.toString(),
                              style: kLabelTextStyleMiddle,
                            ),
                            Text(
                              ' kg',
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              pressedButton: () {
                                setState(() {
                                  weight--;
                                });
                              }
                              ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                                pressedButton: () {
                                  setState(() {
                                    weight++;
                                  });
                                }
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColor,
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

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, this.pressedButton});

  final IconData icon;
  final void Function()? pressedButton;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: pressedButton,
      elevation: 10.0,
      constraints: BoxConstraints(minWidth: 46.0, minHeight: 46.0),
      shape: CircleBorder(),
      fillColor: Colors.red,
    );
  }
}
