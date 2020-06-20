import 'package:flutter/material.dart';
import '../constants.dart';


class IconContent extends StatelessWidget {
  final String typeGender;
  final IconData typeIcon;

  IconContent({this.typeGender, this.typeIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(typeIcon,size: 80.0,color: Colors.white,),
        SizedBox(
          height: 15.0,
        ),
        Text(
          typeGender,
          style: KLableTextStyle,
        )
      ],
    );
  }
}
