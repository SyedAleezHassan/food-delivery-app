import 'package:flutter/material.dart';

import 'login.dart';
import 'signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculate screen height
    double screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: screenHeight * 0.4, // Less than half of the screen height
              margin: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xbbFFFFFF),
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // TabBar with custom style
                  TabBar(
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.blue,
                    tabs: [
                      Tab(text: "Login"),
                      Tab(text: "Signup"),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  login(), // Content for Login tab
                  signUp(), // Content for Signup tab
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
