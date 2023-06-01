import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/screens/components/bannner_left_container.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        width: Globals.width,
        color: Color.fromRGBO(245, 247, 250, 1),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: !ResponsiveWidget.isSmallScreen(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      BannnerLeftContainer(),
                      Container(
                        // color: Colors.grey[200],
                        height: Globals.height * 0.3,
                        width: Globals.width * 0.4,
                        child: Image.asset("images/Illustration.png"),
                      )
                    ])
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: BannnerLeftContainer(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: ResponsiveWidget.isSmallScreen(context)
                          ? Globals.width * 0.4
                          : Globals.width * 0.6,
                      //color: Colors.grey[200],
                      child: Image.asset("images/Illustration.png"),
                    )
                  ],
                ),
        ));
  }
}

//Image.asset("images/Illustration.png")