import 'package:flutter/material.dart';

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