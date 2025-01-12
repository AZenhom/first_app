import 'package:flutter/material.dart';

class WhiteText extends StatelessWidget {
  final String text;
  final double textSixe;

  const WhiteText(
    this.text, {
    super.key,
    this.textSixe = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: textSixe,
          color: Colors.white,
          decoration: TextDecoration.none),
    );
  }
}
