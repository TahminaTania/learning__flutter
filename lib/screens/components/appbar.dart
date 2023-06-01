import 'package:flutter/material.dart';

class MyNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('My App'),
      actions: [
        MediaQuery.of(context).size.width < 600
            ? IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  // Handle menu button press
                },
              )
            : Row(
                children: [
                  NavBarItem(title: 'Home'),
                  NavBarItem(title: 'About'),
                  NavBarItem(title: 'Contact'),
                ],
              ),
      ],
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;

  NavBarItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {
          // Handle navigation
        },
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
