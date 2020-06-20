import "package:flutter/material.dart";

import 'screens/input_page.dart';

void main() {
  runApp(BMICalcualtor());
}

class BMICalcualtor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        accentColor: Colors.purple,
        //backgroundColor: Colors.black,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(body1: TextStyle(color: Color(0xFFFFFFFF)))
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


