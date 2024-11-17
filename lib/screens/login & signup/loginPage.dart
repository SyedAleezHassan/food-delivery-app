import 'package:flutter/material.dart';

import 'login.dart';
import 'signup.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  TabBar(tabs: [
        login(),
        signUp(),
      ]),
    );
  }
}