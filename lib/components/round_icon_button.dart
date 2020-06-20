import "package:flutter/material.dart";

class RoundIconButton extends StatelessWidget {
  final IconData iconButton;
  final Function onPressed;
  RoundIconButton({this.iconButton, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 9.0,
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0XFF4E4F5E),
      child: Icon(
        iconButton,
        color: Colors.white,
      ),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 45.0),
    );
  }
}
