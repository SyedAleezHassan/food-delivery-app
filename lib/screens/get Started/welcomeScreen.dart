import 'package:flutter/material.dart';
import 'package:food_app_flutter/screens/login%20&%20signup/loginPage.dart';

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
          Positioned(
              top: 140,
              left: 30,
              child: Image.asset('assets/images/Food for Everyone.png')),
          Positioned(
              top: 350,
              right: -19,
              child: Image.asset('assets/images/boy.png')),
          Positioned(top: 280, child: Image.asset('assets/images/girl.png')),
          Positioned(
              top: 520, child: Image.asset('assets/images/girl shade.png')),
          Positioned(
              top: 520,
              right: 0,
              child: Image.asset('assets/images/bot shade.png')),
          Positioned(
            bottom: 35,
            right: 70,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginPage()));
              },
              child: Container(
                height: 50, // increased height for better appearance
                width: 240, // increased width for better appearance
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(19),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Color(0xffbFF460A),
                    fontWeight: FontWeight.bold,
                    fontSize: 16, // adjust font size as needed
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
