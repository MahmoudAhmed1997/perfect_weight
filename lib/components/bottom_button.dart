import 'package:flutter/material.dart';

import '../constants.dart';

class ButtomButton extends StatelessWidget {
  String buttontitle;
  final Function onTap ;
  ButtomButton({this.buttontitle,this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: KBottomContainerColor),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: KBottomContainerHeight,
        child: Center(
          child: Text(buttontitle,style: KLargeButtonTextStyle,),
        ),
      ),
    );
  }
}