import 'package:flutter/material.dart';

class getStarted extends StatelessWidget {
  const getStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbFF460A),
      body: Stack(
        children: [
          Positioned(
              top: 140,
              left: 30,
              child: Image.asset('assets/images/Food for Everyone.png')),
        ],
      ),
    );
  }
}
