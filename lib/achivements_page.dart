import 'package:flutter/material.dart';
import 'package:learning__flutter/screens/components/counts_page.dart';

class AchivementPage extends StatelessWidget {
  const AchivementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: 288,
      color: Color.fromRGBO(245, 247, 250, 1),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // color: Colors.amber,
              height: 150,
              alignment: Alignment.center,
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: RichText(
                        text: TextSpan(
                          text: 'Helping a local  \n',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 36,
                          ),
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'business reinvent itself ',
                                style: TextStyle(
                                  color: Colors.green,
                                )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        "We reached here with our hard work and dedication",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            height: 3),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ]),
            ),
            Container(
              width: 540,
              height: 160,
              color: Colors.red,
              child: CountsPage(),
            )
          ]),
    );
  }
}
