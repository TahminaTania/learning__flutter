import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/screens/components/customerpage_right_container.dart';
import 'package:learning__flutter/screens/components/customers_frame4.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;
    return Container(
        width: Globals.width,
        color: Colors.cyan[50],
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: !ResponsiveWidget.isSmallScreen(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      Container(
                        //color: Colors.grey[200],
                        width: Globals.width * 0.4,
                        height: Globals.height * 0.3,
                        child: Image.asset("images/image 9.png"),
                      ),
                      CustomerpageRightContainer()
                    ])
              : Column(
                  children: [
                    Container(
                      //color: Colors.grey[200],
                      width: Globals.width * 0.4,
                      height: Globals.height * 0.3,
                      child: Image.asset("images/image 9.png"),
                    ),
                    CustomerpageRightContainer()
                  ],
                ),
        ));
  }
}
