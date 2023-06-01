import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class ContainerBar extends StatelessWidget {
  const ContainerBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? Globals.height * 0.15
            : 150.73,
        width: ResponsiveWidget.isSmallScreen(context)
            ? Globals.width * 0.7
            : 140.83,
        color: Colors.grey[100],
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.people),
            Align(
              child: Text(
                "Membership Organisations",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: ResponsiveWidget.isSmallScreen(context)
                  ? const EdgeInsets.fromLTRB(20, 10, 20, 10)
                  : const EdgeInsets.all(8.0),
              child: Text(
                "Our membership management software provides full automation of membership renewals and payments",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 9,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
