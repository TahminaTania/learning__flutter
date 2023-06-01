import 'package:flutter/material.dart';

class BodyFirstLeft extends StatelessWidget {
  const BodyFirstLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: 200,
      alignment: Alignment.center,
      child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                child: Text(
              "The unseen of spending three \n years at Pixelgrade",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 24.55,
              ),
            )),
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
              height: 36.27,
            ),
            SizedBox(
                child: InkWell(
                    onTap: () {},
                    child: Container(
                      color: Colors.green[600],
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 9.74, left: 22.27, right: 22.27, bottom: 9.74),
                        child: Text(
                          "Learn More",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )))
          ]),
    );
  }
}
