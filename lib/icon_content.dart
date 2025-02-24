import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  static const double ICON_SIZE = 80;
  static const double TEXT_SIZE = 15;

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
            size: ICON_SIZE,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          iconText,
          style: TextStyle(
              fontSize: TEXT_SIZE,
              color: Color(0xFF8D8E98)
          ),
        )
      ],
    );
  }
}