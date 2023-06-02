import 'package:flutter/material.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(129, 128, 128, 1),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(5),
          child: Icon(
            Icons.facebook,
            color: Colors.white,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(129, 128, 128, 1),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(5),
          child: Icon(
            Icons.facebook,
            color: Colors.white,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(129, 128, 128, 1),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(5),
          child: Icon(
            Icons.facebook,
            color: Colors.white,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(129, 128, 128, 1),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(5),
          child: Icon(
            Icons.facebook,
            color: Colors.white,
          ),
        ),
      ],
    );
    ;
  }
}
