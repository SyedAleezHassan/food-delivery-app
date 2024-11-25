import 'package:flutter/material.dart';

class drinks extends StatefulWidget {
  const drinks({super.key});

  @override
  State<drinks> createState() => _drinksState();
}

class _drinksState extends State<drinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/food1.png'),
      ],
    ));
  }
}
