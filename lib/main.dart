import 'dart:js';

import 'package:flutter/material.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/home_page.dart';
//import 'package:learning__flutter/screens/landing_page.dart';
//import 'package:learning__flutter/screens/components/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Globals.height = MediaQuery.of(context).size.height;
    Globals.width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter website design 1',
      home: HomePage(),
    );
  }
}
