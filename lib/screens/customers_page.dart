import 'package:flutter/material.dart';
import 'package:learning__flutter/screens/components/customers_frame4.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: screenWidth,
      height: 433.4,
      color: Colors.cyan[50],
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(66.62),
                child: Image.asset("images/image 9.png"),
              ),
            ),
            Container(
              // color: Colors.amber,
              height: 324,
              width: 748,
              alignment: Alignment.center,
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        child: Text(
                      "Maecenas dignissim justo eget nulla rutrum molestie. Maecenas lobortis sem dui, vel rutrum risus tincidunt ullamcorper. Proin eu enim metus. Vivamus sed libero ornare, tristique quam in, gravida enim. Nullam ut molestie arcu, at hendrerit elit. Morbi laoreet elit at ligula molestie, nec molestie mi blandit. Suspendisse cursus tellus sed augue ultrices, quis tristique nulla sodales. Suspendisse eget lorem eu turpis vestibulum pretium. Suspendisse potenti. Quisque malesuada enim sapien, vitae placerat ante feugiat eget. Quisque vulputate odio neque, eget efficitur libero condimentum id. Curabitur id nibh id sem dignissim finibus ac sit amet magna.",
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 0),
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
            ),
          ]),
    );
  }
}
