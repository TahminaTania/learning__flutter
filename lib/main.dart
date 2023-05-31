import 'package:flutter/material.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter website design 1',
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text(
      //       "Nexcent",
      //       style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      //     ),
      //     actions: [AppbarPage()],
      //   ),
      //   body: Text("Body"),
      // ),
      home: HomePage(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     var screenWidth = screenSize.width;
//     var screenHeight = screenSize.height;
//     String hexColor = "#4CAF4F";
//     Color Regcolor =
//         Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);

//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size(screenSize.width, 1000),
//         child: Container(
//           color: Colors.white,
//           child: Padding(
//             padding: EdgeInsets.all(20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(child: Text('Nexcent')),
//                 Container(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       InkWell(
//                         onTap: () {},
//                         child: Text(
//                           'Home',
//                           style: TextStyle(color: Colors.black),
//                         ),
//                       ),
//                       SizedBox(width: screenSize.width / 20),
//                       InkWell(
//                         onTap: () {},
//                         child: Text(
//                           'Features',
//                           style: TextStyle(color: Colors.black),
//                         ),
//                       ),
//                       SizedBox(width: screenSize.width / 20),
//                       InkWell(
//                         onTap: () {},
//                         child: Text(
//                           'Comunity',
//                           style: TextStyle(color: Colors.black),
//                         ),
//                       ),
//                       SizedBox(width: screenSize.width / 20),
//                       InkWell(
//                         onTap: () {},
//                         child: Text(
//                           'Blog',
//                           style: TextStyle(color: Colors.black),
//                         ),
//                       ),
//                       SizedBox(width: screenSize.width / 20),
//                       InkWell(
//                         onTap: () {},
//                         child: Container(
//                           color: Regcolor,
//                           child: Padding(
//                             padding: const EdgeInsets.only(
//                                 top: 9.74,
//                                 left: 22.27,
//                                 right: 22.27,
//                                 bottom: 9.74),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Text("Register Now",
//                                     style: TextStyle(color: Colors.white)),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Icon(
//                                   Icons.arrow_right_alt,
//                                   color: Colors.white,
//                                   size: 15,
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: LandingPage(),
//     );
//   }
// }
