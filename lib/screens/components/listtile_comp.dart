import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class ListtileComp extends StatelessWidget {
  final String title, subtitle;
  final IconData icon;

  const ListtileComp(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.green,
          size: !ResponsiveWidget.isSmallScreen(context)
              ? Globals.width * 0.04
              : Globals.width * 0.07,
          weight: 900,
        ),
        title: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: !ResponsiveWidget.isSmallScreen(context)
                    ? Globals.width * 0.02
                    : Globals.width * 0.04,
              ),
            ),
            SizedBox(width: 8),
          ],
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: !ResponsiveWidget.isSmallScreen(context)
                ? Globals.width * 0.015
                : 10,
          ),
        ),
      ),
    );
  }
}
