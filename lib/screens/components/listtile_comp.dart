import 'package:flutter/material.dart';

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
          size: 40,
          weight: 900,
        ),
        title: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
            SizedBox(width: 8),
          ],
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
        ),
      ),
    );
  }
}
