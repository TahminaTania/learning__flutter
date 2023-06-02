import 'package:flutter/material.dart';
import 'package:learning__flutter/landing_page.dart';

class AdaptiveAppBar extends StatefulWidget {
  @override
  _AdaptiveAppBarState createState() => _AdaptiveAppBarState();
}

class _AdaptiveAppBarState extends State<AdaptiveAppBar>
    with SingleTickerProviderStateMixin {
  bool isMenuOpen = false;
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void toggleMenu() {
    if (isMenuOpen) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
    setState(() {
      isMenuOpen = !isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: LandingPage(),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            child: SlideTransition(
              position: _animation,
              child: Container(
                width: 200,
                color: Color.fromRGBO(
                    255, 255, 255, 0.8), // Customize menu background color
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 80), // Space for the app bar
                    PopupMenuItem(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),
                        onPressed: () {},
                        child: Text('Home'),
                      ),
                    ),
                    SizedBox(height: 40),
                    PopupMenuItem(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),
                        onPressed: () {},
                        child: Text('Featured'),
                      ),
                    ),
                    SizedBox(height: 40),
                    PopupMenuItem(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),
                        onPressed: () {},
                        child: Text('Community'),
                      ),
                    ),
                    SizedBox(height: 40),
                    PopupMenuItem(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Background color
                        ),
                        child: Text('Blog'),
                      ),
                    ),
                    SizedBox(height: 40),
                    PopupMenuItem(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          color: Colors.green,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 9.74,
                                left: 22.27,
                                right: 22.27,
                                bottom: 9.74),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Register Now",
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.arrow_right_alt,
                                  color: Colors.white,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                'Nexcent',
                style: TextStyle(color: Colors.green),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 40,
                    color: Colors.green,
                  ),
                  onPressed: toggleMenu,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
