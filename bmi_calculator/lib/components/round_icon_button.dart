import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPress;

  const RoundIconButton({Key? key, this.icon, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
      elevation: 8.0,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
    );
  }
}
