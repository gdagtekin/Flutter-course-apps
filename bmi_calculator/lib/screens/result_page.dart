import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({Key? key, required this.calculateResultTitle, required this.calculateResultNumber, required this.calculateResultText}) : super(key: key);

  var calculateResultTitle = '';
  var calculateResultNumber = '';
  var calculateResultText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0B0C22),
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
            child: Text(
              'Your Result',
              style: kNumberTextStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    calculateResultTitle,
                    style: kResultTitleStyle,
                  ),
                  Text(
                    calculateResultNumber,
                    style: kResultNumberTextStyle,
                  ),
                  Text(
                    calculateResultText,
                    style: kResultTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
