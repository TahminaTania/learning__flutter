import 'package:flutter/material.dart';
import 'package:learning__flutter/screens/components/footer_frame.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        SizedBox(
            child: Text(
          "Pellentesque suscipit\n fringilla libero eu.",
          style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            fontSize: 44,
          ),
        )),
        SizedBox(
          height: 20,
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
                      "Get a Demo",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ))),
        SizedBox(
          height: 40,
        ),
        Container(
          height: 328,
          color: Color.fromRGBO(38, 50, 56, 1),
          child: FooterFrame(),
        )
      ]),
    );
  }
}
