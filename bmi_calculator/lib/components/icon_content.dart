import 'package:flutter/material.dart';
import '../constants.dart';

class GenderCard extends StatelessWidget {
  IconData? icon;
  String? genderText;

  GenderCard({required this.icon, required this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon!,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          genderText!,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}