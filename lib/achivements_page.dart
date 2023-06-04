import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/screens/components/achivements_left_container.dart';
import 'package:learning__flutter/screens/components/counts_page.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class AchivementPage extends StatelessWidget {
  const AchivementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: Globals.width,
        //height: 288,
        color: Color.fromRGBO(245, 247, 250, 1),
        child: !ResponsiveWidget.isSmallScreen(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    AchivementsLeftContainer(),
                    Container(
                      width: Globals.width * 0.5,
                      height: screenHeight * 0.4,
                      //color: Colors.red,
                      child: Center(child: CountsPage()),
                    )
                  ])
            : Column(
                children: [
                  AchivementsLeftContainer(),
                  Container(
                    width: Globals.width * 0.9,
                   // height: Globals.width < 400 ? null : 165,
                    // color: Colors.red,
                    child: Center(child: CountsPage()),
                  )
                ],
              ));
  }
}
