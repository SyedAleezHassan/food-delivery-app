import 'package:flutter/material.dart';

class foods extends StatefulWidget {
  const foods({super.key});

  @override
  State<foods> createState() => _foodsState();
}

class _foodsState extends State<foods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/food1.jpg',
                width: MediaQuery.of(context).size.width * 0.8, // Adjust width
              ),
              Container(
                height: 30,
                width: 30,
                color: Colors.amber,
              ),
              Image.asset(
                'assets/images/food1.jpg',
                width: MediaQuery.of(context).size.width * 0.8, // Adjust width
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
