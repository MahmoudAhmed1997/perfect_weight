import 'package:flutter/material.dart';

class ReusableCode extends StatelessWidget {
  final Color colour;
  final Widget childCard;
  final Function onPress;
  ReusableCode({@required this.colour, this.childCard,this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(

          onTap: onPress,

          child: childCard),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
