import 'package:flutter/material.dart';
import '../constants.dart';
import 'round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconBottomContent extends StatelessWidget {

  IconBottomContent({
    required this.iconText,
    required this.num,
    required this.shouldApplyUnit,
    required this.leftButtonFunc,
    required this.rightButtonFunc,
  });

  final String iconText;
  final int num;
  final bool shouldApplyUnit;
  final void Function()? leftButtonFunc;
  final void Function()? rightButtonFunc;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          iconText,
          style: kLabelTextStyle,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              num.toString(),
              style: kLabelTextStyleMiddle,
            ),
            Visibility(
              visible: shouldApplyUnit,
              child: Text(
                ' kg',
                style: kLabelTextStyle,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
                icon: FontAwesomeIcons.minus,
                pressedButton: leftButtonFunc,
            ),
            SizedBox(
              width: 10,
            ),
            RoundIconButton(
                icon: FontAwesomeIcons.plus,
                pressedButton: rightButtonFunc,
            ),
          ],
        )
      ],
    );
  }
}
