import 'dart:math';

import 'package:first_app/widget_white_text.dart';
import 'package:flutter/material.dart';

class DiceImage extends StatefulWidget {
  const DiceImage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceImageState();
  }
}

class _DiceImageState extends State<DiceImage> {
  Random random = Random();
  late int diceFaceNumber;

  @override
  void initState() {
    diceFaceNumber = random.nextInt(6) + 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(
          'assets/images/dice-$diceFaceNumber.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        FilledButton(
            onPressed: refreshDiceNumber,
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.black),
            ),
            child: const WhiteText("Roll Dice")),
      ],
    );
  }

  void refreshDiceNumber() {
    setState(() {
      diceFaceNumber = random.nextInt(6) + 1;
    });
  }
}
