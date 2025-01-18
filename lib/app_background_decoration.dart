import 'package:flutter/material.dart';

BoxDecoration appBackgroundDecoration() {
  return const BoxDecoration(
    gradient: LinearGradient(
      colors: [Colors.blue, Colors.purple],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
}
