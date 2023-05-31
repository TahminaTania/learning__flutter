import 'package:flutter/material.dart';

class AppbarPage extends StatelessWidget {
  const AppbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        //crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 50,
        children: <Widget>[
          ElevatedButton(onPressed: () {}, child: Text("Home")),
          ElevatedButton(onPressed: () {}, child: Text("Features")),
          ElevatedButton(onPressed: () {}, child: Text("Comunity")),
          ElevatedButton(onPressed: () {}, child: Text("Blog")),
          ElevatedButton(onPressed: () {}, child: Text("Pricing")),
          ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [Text("Register Now"), Icon(Icons.arrow_right_alt)],
              ))
        ],
      ),
    );
  }
}
