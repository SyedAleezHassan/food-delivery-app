// import 'package:flutter/material.dart';

// class navBar extends StatefulWidget {
//   const navBar({super.key});

//   @override
//   State<navBar> createState() => _navBarState();
// }

// class _navBarState extends State<navBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text('This is home page syed sahab'),),
//     );
//   }
// }

import 'package:flutter/material.dart';

class navBar extends StatefulWidget {
  @override
  _navBarState createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  int _selectedIndex = 0; // Default selected index is Home (0)

  // List of pages
  final List<Widget> _pages = [
    Center(child: Text("Home Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Favourite Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("Login Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("History Page", style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
        backgroundColor: Colors.blue,
      ),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Set the selected index
        onTap: _onItemTapped, // Handle item tap
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: "Login",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),
        ],
        type: BottomNavigationBarType.fixed, // Ensures all items are shown
        selectedItemColor: Colors.blue, // Highlight color for the selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
      ),
    );
  }
}
