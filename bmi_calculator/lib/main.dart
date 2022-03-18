import 'package:bmi_calculator/screens/input_page.dart';

import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  BMICalculator({Key? key}) : super(key: key);
  final ThemeData theme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF090C22),
        ),
        scaffoldBackgroundColor: const Color(0xFF090C22),
      ),
      home: const InputPage(),
    );
  }
}
