import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning__flutter/globals.dart';
import 'package:learning__flutter/landing_page.dart';
import 'package:learning__flutter/home_page.dart';
import 'package:learning__flutter/screens/components/responsive_appbar.dart';
import 'package:learning__flutter/screens/components/responsive_widget.dart';

import 'login/cubit/login_cubit.dart';
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
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter website design 1',
          routes: {
            '/home': (context) => HomePage(),
          },
          home: App()),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveWidget.isSmallScreen(context)
          ? AdaptiveAppBar()
          : BlocProvider(
              create: (context) => LoginCubit(),
              child: HomePage(),
            ),
    );
  }
}
