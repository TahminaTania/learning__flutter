import 'package:flutter/material.dart';
import 'package:learning__flutter/screens/components/community_frame.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class CommunityUpdatesPage extends StatelessWidget {
  const CommunityUpdatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: 506,
      color: Colors.white,
      child: Center(
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: Column(children: [
                SizedBox(
                    child: Text(
                  "Caring is the new marketing",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 36,
                      height: 3),
                )),
                SizedBox(
                  width: 628,
                  height: 72,
                  child: Text(
                    "The Nexcent blog is the best place to read about the latest membership insights, trends and more. See who's joining the community, read about how our community are increasing their membership income and lot's more.​",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1),
                  ),
                )
              ])),
              Container(
                  child: !ResponsiveWidget.isSmallScreen(context)
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //!ResponsiveWidget.isSmallScreen(context) ? 3 : 1,
                          children: [
                            CommunityFrame(),
                            CommunityFrame(),
                            CommunityFrame()
                          ],
                        )
                      : Column(
                          children: [
                            CommunityFrame(),
                            SizedBox(
                              height: 60,
                            ),
                            CommunityFrame(),
                            SizedBox(
                              height: 60,
                            ),
                            CommunityFrame(),
                            SizedBox(
                              height: 60,
                            ),
                          ],
                        ))
            ]),
      ),
    );
  }
}
