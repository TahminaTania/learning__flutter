import 'package:flutter/material.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

import '../../globals.dart';

class BannnerLeftContainer extends StatelessWidget {
  const BannnerLeftContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: Globals.height * 0.5,
      width: ResponsiveWidget.isSmallScreen(context)
          ? Globals.width
          : Globals.width * 0.6,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: RichText(
                  text: TextSpan(
                    text: 'Lessons and insights  \n',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 36,
                        color: Colors.black),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'from 8 years',
                          style: TextStyle(
                            color: Colors.green,
                          )),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                child: Text(
                  "Where to grow your business as a photographer: site or social media?",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      height: 1),
                ),
              ),
              const SizedBox(
                height: 22.27,
              ),
              SizedBox(
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                        color: Colors.green[600],
                        child: const Padding(
                          padding: EdgeInsets.only(
                              top: 9.74,
                              left: 22.27,
                              right: 22.27,
                              bottom: 9.74),
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )))
            ]),
      ),
    );
  }
}
