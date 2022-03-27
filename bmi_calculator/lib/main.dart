import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0B0C22),
        scaffoldBackgroundColor: Color(0xFF0B0C22),
      ),
      home: MyHomePage(),
    );
  }
}
