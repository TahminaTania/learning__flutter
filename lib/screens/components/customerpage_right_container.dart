import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/screens/components/customers_frame4.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class CustomerpageRightContainer extends StatelessWidget {
  const CustomerpageRightContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      //height: Globals.height * 0.5,
      width: !ResponsiveWidget.isSmallScreen(context)
          ? Globals.width * 0.6
          : Globals.width,
      alignment: Alignment.center,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                child: Text(
              "Maecenas dignissim justo eget nulla rutrum molestie. Maecenas lobortis sem dui, vel rutrum risus tincidunt ullamcorper. Proin eu enim metus. Vivamus sed libero ornare, tristique quam in, gravida enim. Nullam ut molestie arcu, at hendrerit elit. Morbi laoreet elit at ligula molestie, nec molestie mi blandit. Suspendisse cursus tellus sed augue ultrices, quis tristique nulla sodales. Suspendisse eget lorem eu turpis vestibulum pretium. Suspendisse potenti. Quisque malesuada enim sapien, vitae placerat ante feugiat eget. Quisque vulputate odio neque, eget efficitur libero condimentum id. Curabitur id nibh id sem dignissim finibus ac sit amet magna.",
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  height: 1.5),
            )),
            SizedBox(
              child: Text(
                "Tim Smith",
                style: TextStyle(
                    color: Colors.green[700],
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    height: 2),
              ),
            ),
            SizedBox(
              child: Text(
                "British Dragon Boat Racing Association",
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    height: 2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(child: Frame4Page())
          ]),
    );
  }
}
