import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/screens/components/container_bar.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

class ComunityPage extends StatelessWidget {
  const ComunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 291.8,
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(245, 247, 250, 1),
      child: Column(children: [
        Container(
          child: Text(
            "Manage your entire community \n in a single system",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(77, 77, 77, 1),
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          child: Text("Who is Nextcent suitable for?",
              style: TextStyle(
                color: Color.fromRGBO(113, 113, 113, 1),
                fontSize: 11.14,
                fontWeight: FontWeight.w400,
                height: 3,
              )),
        ),
        Container(
            //height: 196.1,
            child: Globals.width > 600
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ContainerBar(),
                      ContainerBar(),
                      ContainerBar(),
                    ],
                  )
                : Column(
                    children: [
                      ContainerBar(),
                      ContainerBar(),
                      ContainerBar(),
                    ],
                  ))
      ]),
    );
  }
}
