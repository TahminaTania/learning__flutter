import 'package:flutter/material.dart';

class ClientPage extends StatelessWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132.92,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(children: [
        Container(
          child: Text(
            "Our Clients",
            style: TextStyle(
              color: Color.fromRGBO(77, 77, 77, 1),
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          child: Text("We have been working with some Fortune 500+ clients",
              style: TextStyle(
                color: Color.fromRGBO(113, 113, 113, 1),
                fontSize: 11.14,
                fontWeight: FontWeight.w400,
                height: 3,
              )),
        ),
        Container(
          height: 68.21,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(child: Image.asset("images/Logo.png")),
              SizedBox(child: Image.asset("images/Logo (2).png")),
              SizedBox(child: Image.asset("images/Logo (3).png")),
              SizedBox(child: Image.asset("images/Logo (4).png")),
              SizedBox(child: Image.asset("images/Logo (5).png")),
              SizedBox(child: Image.asset("images/Logo (1).png")),
            ],
          ),
        )
      ]),
    );
  }
}
