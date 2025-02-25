import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {

  IconContent({required this.iconText, required this.iconShape, required this.shouldApplyPadding});

  final String iconText;
  final IconData iconShape;
  final bool shouldApplyPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: shouldApplyPadding ? EdgeInsets.only(left: 10) : null,
          child: Icon(
            iconShape,
            size: 80,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          iconText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}