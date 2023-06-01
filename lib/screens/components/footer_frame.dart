import 'package:flutter/material.dart';
import 'package:learning__flutter/screens/components/social_icons.dart';

class FooterFrame extends StatelessWidget {
  const FooterFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nexcent",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      height: 3,
                      color: Colors.white),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Copyright © 2020 Nexcent ltd.",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1,
                        color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "All rights reserved",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 176,
                  height: 36,
                  child: SocialIcons(),
                )
              ],
            )),
            Container(
                child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Company",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            height: 3,
                            color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "About Us",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1,
                            color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Contact us",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1,
                            color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Blog",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1,
                            color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Pricing",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Support",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            height: 3,
                            color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Help center",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1,
                            color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Terms of service",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1,
                            color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Legal",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1,
                            color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Privacy policy",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1,
                            color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            )),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Stay Up To Date",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        height: 3,
                        color: Colors.white),
                  ),
                ),
                Container(
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    initialValue: ' ',
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(255, 255, 255, 0.2),
                        hintText: '',
                        prefix: Text(
                          'Your Email Address',
                          style: TextStyle(
                              color: Color.fromARGB(255, 210, 208, 208)),
                        ),
                        suffix: Icon(
                          Icons.send,
                          color: Color.fromARGB(255, 210, 208, 208),
                        ),
                        border: OutlineInputBorder()),
                  ),
                )
              ],
            )),
          ],
        ));
  }
}
