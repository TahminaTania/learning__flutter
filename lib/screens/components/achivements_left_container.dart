import 'package:flutter/material.dart';

class AchivementsLeftContainer extends StatelessWidget {
  const AchivementsLeftContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: 150,
      alignment: Alignment.center,
      child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: RichText(
                text: TextSpan(
                  text: 'Helping a local  \n',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                      color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'business reinvent itself ',
                        style: TextStyle(
                          color: Colors.green,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Text(
                "We reached here with our hard work and dedication",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    height: 3),
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ]),
    );
  }
}
