import 'package:first_app/app_background_decoration.dart';
import 'package:first_app/widget_white_text.dart';
import 'package:flutter/material.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key, this.onStartQuizPressed});

  final void Function()? onStartQuizPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: appBackgroundDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/quiz-logo.png',
            height: 200,
          ),
          const SizedBox(height: 70),
          OutlinedButton(
            onPressed: onStartQuizPressed,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Colors.white,
                width: 2,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
            ),
            child: const WhiteText('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
