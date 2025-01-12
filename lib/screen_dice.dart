import 'package:first_app/widget_dice_image.dart';
import 'package:first_app/widget_white_text.dart';
import 'package:flutter/material.dart';

class DiceScreen extends StatelessWidget {
  const DiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const WhiteText('Roll the Dice!', textSixe: 30),
          const SizedBox(height: 20),
          DiceImage(),
        ],
      ),
    );
  }
}
