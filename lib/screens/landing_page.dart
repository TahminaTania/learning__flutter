import 'package:flutter/material.dart';
import 'package:learning__flutter/screens/components/achivements_page.dart';
import 'package:learning__flutter/screens/components/banner_page.dart';
import 'package:learning__flutter/screens/components/body_first.dart';
import 'package:learning__flutter/screens/components/client_page.dart';
import 'package:learning__flutter/screens/components/comunity.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(children: [
          BannerPage(),
          SizedBox(
            height: 27.84,
          ),
          ClientPage(),
          SizedBox(
            height: 27.84,
          ),
          ComunityPage(),
          BodyFirstPage(),
          AchivementPage()
        ]),
      ),
    );
  }
}
