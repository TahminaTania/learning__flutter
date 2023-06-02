import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';
import 'package:learning__flutter/screens/components/social_icons.dart';

class FooterFrame2 extends StatelessWidget {
  const FooterFrame2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        // padding: !ResponsiveWidget.isMediumScreen(context)
        //     ? const EdgeInsets.symmetric(horizontal: 30, vertical: 10)
        //     : null,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nexcent",
                        style: TextStyle(
                            fontSize: Globals.width / 40,
                            fontWeight: FontWeight.w900,
                            height: 3,
                            color: Colors.white),
                      ),
                      Text(
                        "Copyright © 2020 Nexcent ltd.",
                        style: TextStyle(
                            //fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 2,
                            color: Colors.white),
                      ),
                      Text(
                        "All rights reserved",
                        style: TextStyle(
                            //fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 2,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Company",
                            style: TextStyle(
                                fontSize: Globals.width / 50,
                                fontWeight: FontWeight.w600,
                                height: 3,
                                color: Colors.white),
                          ),
                          Text(
                            "About Us",
                            style: TextStyle(
                                //fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1,
                                color: Colors.white),
                          ),
                          Text(
                            "Contact us",
                            style: TextStyle(
                                //fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 2,
                                color: Colors.white),
                          ),
                          Text(
                            "Blog",
                            style: TextStyle(
                                // fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1,
                                color: Colors.white),
                          ),
                          Text(
                            "Pricing",
                            style: TextStyle(
                                //fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 2,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Support",
                            style: TextStyle(
                                fontSize: Globals.width / 50,
                                fontWeight: FontWeight.w600,
                                height: 3,
                                color: Colors.white),
                          ),
                          Text(
                            "Help center",
                            style: TextStyle(
                                // fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 2,
                                color: Colors.white),
                          ),
                          Text(
                            "Terms of service",
                            style: TextStyle(
                                //fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 2,
                                color: Colors.white),
                          ),
                          Text(
                            "Legal",
                            style: TextStyle(
                                // fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1,
                                color: Colors.white),
                          ),
                          Text(
                            "Privacy policy",
                            style: TextStyle(
                                //  fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 2,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  )),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                    //color: Colors.amber,
                    width: Globals.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Stay Up To Date",
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w900,
                                height: 3,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: Globals.width * 0.70,
                          child: TextFormField(
                            initialValue: ' ',
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(255, 255, 255, 0.2),
                                hintText: '',
                                prefix: Text(
                                  'Your Email Address',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 210, 208, 208)),
                                ),
                                suffix: Icon(
                                  Icons.send,
                                  color: Color.fromARGB(255, 210, 208, 208),
                                ),
                                border: OutlineInputBorder()),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: Globals.width,
                          height: 36,
                          child: SocialIcons(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ));
  }
}
