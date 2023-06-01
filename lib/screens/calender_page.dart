import 'package:flutter/material.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: screenWidth,
      height: 433.4,
      color: Colors.white,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              //color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(66.62),
                child: Image.asset("images/pana.png"),
              ),
            ),
            Container(
              // color: Colors.amber,
              height: 308,
              width: 661,
              alignment: Alignment.center,
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        child: Text(
                      "How to design your site footer like \n we did",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 24.55,
                      ),
                    )),
                    SizedBox(
                      child: Text(
                        "Donec a eros justo. Fusce egestas tristique ultrices. Nam tempor, augue nec tincidunt molestie, massa nunc varius arcu, at scelerisque elit erat a magna. Donec quis erat at libero ultrices mollis. In hac habitasse platea dictumst. Vivamus vehicula leo dui, at porta nisi facilisis finibus. In euismod augue vitae nisi ultricies, non aliquet urna tincidunt. Integer in nisi eget nulla commodo faucibus efficitur quis massa. Praesent felis est, finibus et nisi ac, hendrerit venenatis libero. Donec consectetur faucibus ipsum id gravida.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            height: 2),
                      ),
                    ),
                    SizedBox(
                      height: 36.27,
                    ),
                    SizedBox(
                        child: InkWell(
                            onTap: () {},
                            child: Container(
                              color: Colors.green[600],
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 9.74,
                                    left: 22.27,
                                    right: 22.27,
                                    bottom: 9.74),
                                child: Text(
                                  "Learn More",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )))
                  ]),
            ),
          ]),
    );
  }
}
