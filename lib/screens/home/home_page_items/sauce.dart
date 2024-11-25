import 'package:flutter/material.dart';

class sauce extends StatefulWidget {
  const sauce({super.key});

  @override
  State<sauce> createState() => _sauceState();
}

class _sauceState extends State<sauce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('This is sauce page'),),
    );
  }
}