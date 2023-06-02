import 'package:flutter/material.dart';
import 'package:learning__flutter/achivements_page.dart';
import 'package:learning__flutter/banner_page.dart';
import 'package:learning__flutter/main.dart';
import 'package:learning__flutter/screens/calender_page.dart';
import 'package:learning__flutter/screens/components/body_first.dart';
import 'package:learning__flutter/client_page.dart';
import 'package:learning__flutter/screens/components/comunity.dart';
import 'package:learning__flutter/screens/cummunity_updates_page.dart';
import 'package:learning__flutter/screens/customers_page.dart';
import 'package:learning__flutter/screens/footer_page.dart';

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
          AchivementPage(),
          SizedBox(
            height: 27.84,
          ),
          CalenderPage(),
          CustomersPage(),
          SizedBox(
            height: 27.84,
          ),
          CommunityUpdatesPage(),
          SizedBox(
            height: 150,
          ),
          FooterPage()
        ]),
      ),
    );
  }
}
