import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusableCode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult ;
  final String resultText ;
  final String interpretaion ;

  ResultPage({@required this.bmiResult,@required this.interpretaion,@required this.resultText});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Result",
          style: KLableTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                "Your Result",
                style: KTitleTextStyle,textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCode(
                colour: KActiveCardColor,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: KResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: KBMITextStyle,
                    ),
                    Text(
                      interpretaion,
                      style: KBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          ButtomButton(onTap: (){
           Navigator.pop(context);
          },buttontitle: "RE_CALCULATE",)

        ],
      ),
    );
  }
}
