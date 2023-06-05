import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class AchivementsLeftContainer extends StatelessWidget {
  const AchivementsLeftContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // height: Globals.width < 400 ? null : 150,
      alignment: Alignment.center,
      child: Padding(
        padding: !ResponsiveWidget.isSmallScreen(context)
            ? const EdgeInsets.all(0.0)
            : const EdgeInsets.fromLTRB(5, 0, 0, 0),
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
                        fontSize: ResponsiveWidget.isSmallScreen(context)
                            ? 36
                            : Globals.width / 38,
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
      ),
    );
  }
}
