import 'package:flutter/material.dart';

class ContainerBar extends StatelessWidget {
  const ContainerBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        height: 130.73,
        width: 140.83,
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
              height: 5,
            ),
            Text(
              "Our membership management software provides full automation of membership renewals and payments",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 9,
              ),
            )
          ],
        ),
      ),
    );
  }
}
