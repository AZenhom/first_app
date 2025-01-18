import 'package:first_app/screen_boarding.dart';
import 'package:first_app/screen_dice.dart';
import 'package:flutter/material.dart';

class AppScafold extends StatefulWidget {
  const AppScafold({super.key});

  @override
  State<StatefulWidget> createState() {
    return _AppScafoldState();
  }
}

class _AppScafoldState extends State<AppScafold> {
  late String selectedScreen;
  late void Function()? onStartQuizPressed;

  @override
  void initState() {
    selectedScreen = 'BoardingScreen';
    onStartQuizPressed = () {
      setState(() {
        selectedScreen = 'DiceScreen';
      });
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectedScreen == "DiceScreen"
          ? const DiceScreen()
          : BoardingScreen(onStartQuizPressed: onStartQuizPressed),
    );
  }
}
