import 'package:flutter/material.dart';

import '../home/navBar.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF2F2F2),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const TextField(
                decoration: InputDecoration(label: Text('Email address')),
              ),
              const SizedBox(
                height: 35,
              ),
              const TextField(
                decoration: InputDecoration(label: Text('Password')),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'forgot passcode?',
                  style: TextStyle(
                    color: Color(0xFFFA4A0C), // Hex color for FA4A0C
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 120, left: 26),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  navBar()));
                  },
                  child: Container(
                    // margin: EdgeInsets.only(bottom: 5, left: 26),
                    height: 55, // increased height for better appearance
                    width: 290, // increased width for better appearance
                    decoration: BoxDecoration(
                      color: const Color(0xffbFF460A),
                      borderRadius: BorderRadius.circular(29),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        color: Color(0xffbFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 16, // adjust font size as needed
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
