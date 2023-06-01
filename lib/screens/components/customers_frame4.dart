import 'package:flutter/material.dart';

class Frame4Page extends StatelessWidget {
  const Frame4Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 748,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(child: Image.asset("images/Logo.png")),
          SizedBox(child: Image.asset("images/Logo (2).png")),
          SizedBox(child: Image.asset("images/Logo (3).png")),
          SizedBox(child: Image.asset("images/Logo (4).png")),
          SizedBox(child: Image.asset("images/Logo (5).png")),
          SizedBox(
            child: InkWell(
              onTap: () {},
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Meet All Customers",
                        style: TextStyle(color: Colors.green[700])),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: Colors.green[700],
                      size: 15,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
