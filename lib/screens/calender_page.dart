import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/screens/components/calender_right_container.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      // height: size.height * 0.6,
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
                    child: Image.asset("images/pana.png"),
                  ),
                  CalenderRightContainer(),
                ])
          : Column(
              children: [
                Container(
                  width: ResponsiveWidget.isSmallScreen(context)
                      ? Globals.width * 0.4
                      : Globals.width * 0.6,
                  //color: Colors.grey[200],
                  child: Image.asset("images/pana.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: CalenderRightContainer(),
                ),
              ],
            ),
    );
  }
}



  // Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: [
  //           Container(
  //             //color: Colors.grey[200],
  //             child: Padding(
  //               padding: const EdgeInsets.all(66.62),
  //               child: Image.asset("images/pana.png"),
  //             ),
  //           ),
           
  //         ]),