import 'package:flutter/material.dart';

class ResPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobileView = screenWidth < 600;

    return Scaffold(
      body: GridView.count(
        crossAxisCount: isMobileView ? 1 : 3,
        childAspectRatio: isMobileView ? 4 : 1,
        children: [
          Container(color: Colors.red, child: Center(child: Text('Column 1'))),
          Container(
              color: Colors.green, child: Center(child: Text('Column 2'))),
          Container(color: Colors.blue, child: Center(child: Text('Column 3'))),
        ],
      ),
    );
  }
}
