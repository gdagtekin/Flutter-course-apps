import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final String? buttonText;
  final VoidCallback? onTap;

  const BottomButton({Key? key, this.buttonText, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70,
        color: kActiveButtonColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: Text(
            buttonText!,
            style: kButtonTextStyle,
          ),
        ),
      ),
    );
  }
}