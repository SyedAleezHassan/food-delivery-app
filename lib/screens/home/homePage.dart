import 'package:flutter/material.dart';
import 'package:food_app_flutter/screens/home/home_page_items/drinks.dart';
import 'package:food_app_flutter/screens/home/home_page_items/foods.dart';
import 'package:food_app_flutter/screens/home/home_page_items/sauce.dart';
import 'package:food_app_flutter/screens/home/home_page_items/snacks.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    // Calculate screen height
    double screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        // backgroundColor: Color(0xF6F6F9),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: screenHeight * 0.4, // Less than half of the screen height
              margin: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/chef.png'),
                ),
                color: Color.fromARGB(253, 253, 253, 253),
                borderRadius: BorderRadius.circular(35),
                boxShadow: const [
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
                    labelColor: Color(0xffbFF460A),
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.blue,
                    tabs: [
                      Tab(text: "Foods"),
                      Tab(text: "Drinks"),
                      Tab(text: "Snacks"),
                      Tab(text: "Sauces"),
                    ],
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  foods(),
                  drinks(),
                  snacks(),
                  sauce()
                  // signUp(), // Content for Signup tab
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
