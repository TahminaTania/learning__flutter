import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/screens/components/listtile_comp.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class CountsPage extends StatelessWidget {
  const CountsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      //width: Globals.width > 400 ? Globals.width : null,
      //color: Colors.amber,
      child: Column(children: [
        Row(
          children: [
            ListtileComp(
                title: "2,245,341",
                subtitle: "Members",
                icon: Icons.people_alt_outlined),
            ListtileComp(
                title: "46,328", subtitle: "Clubs", icon: Icons.handshake)
          ],
        ),
        SizedBox(
          height: !ResponsiveWidget.isSmallScreen(context) ? 38 : 15,
        ),
        Row(
          children: [
            ListtileComp(
                title: "828,867",
                subtitle: "Event Bookings",
                icon: Icons.book_online),
            ListtileComp(
                title: "1,926,436", subtitle: "Payments", icon: Icons.payment)
          ],
        ),
      ]),
    );
  }
}
