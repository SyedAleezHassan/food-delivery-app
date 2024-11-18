import 'package:flutter/material.dart';

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
      body: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(label: Text('Email address')),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(label: Text('Password')),
            ),
            TextButton(onPressed: () {}, child: Text('forgot passcode'))
          ],
        ),
      ),
    );
  }
}
