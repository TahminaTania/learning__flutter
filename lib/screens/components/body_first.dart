import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/screens/components/body_first_left.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class BodyFirstPage extends StatelessWidget {
  const BodyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
        width: screenWidth,
        //height: 416.95,
        color: Colors.white,
        child: !ResponsiveWidget.isSmallScreen(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Container(
                      // color: Colors.grey[200],
                      height: Globals.height * 0.3,
                      width: Globals.width * 0.4,
                      child: Padding(
                        padding: const EdgeInsets.all(16.62),
                        child: Image.asset("images/Illustration.png"),
                      ),
                    ),
                    BodyFirstLeft()
                  ])
            : Column(
                children: [
                  Container(
                    width: ResponsiveWidget.isSmallScreen(context)
                        ? Globals.width * 0.4
                        : Globals.width * 0.6,
                    //color: Colors.grey[200],
                    child: Image.asset("images/Illustration.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BodyFirstLeft()
                ],
              ));
  }
}
