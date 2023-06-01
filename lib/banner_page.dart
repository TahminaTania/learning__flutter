import 'package:flutter/material.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: 416.95,
      color: Color.fromRGBO(245, 247, 250, 1),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // color: Colors.amber,
              height: 200,
              alignment: Alignment.center,
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: RichText(
                        text: TextSpan(
                          text: 'Lessons and insights  \n',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 44.55,
                          ),
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
                    SizedBox(
                      child: Text(
                        "Where to grow your business as a photographer: site or social media?",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            height: 3),
                      ),
                    ),
                    SizedBox(
                      height: 22.27,
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
                                  "Register",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )))
                  ]),
            ),
            Container(
              //color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(66.62),
                child: Image.asset("images/Illustration.png"),
              ),
            )
          ]),
    );
  }
}
