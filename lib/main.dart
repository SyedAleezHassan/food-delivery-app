////start food delivery....

import 'package:flutter/material.dart';

import 'screens/get Started/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  getStarted(),
    );
  }
}
