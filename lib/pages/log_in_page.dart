//import 'package:blo_state_manage/bloc/user/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning__flutter/home_page.dart';
import 'package:learning__flutter/landing_page.dart';
import 'package:learning__flutter/pages/second_page.dart';

import '../login/cubit/login_cubit.dart';

//import '../bloc/app_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailControl = TextEditingController();
  TextEditingController passControl = TextEditingController();
  String emailV = "";
  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    emailControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.5,
              //color: Colors.grey,
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  BlocBuilder<LoginCubit, LoginState>(
                    builder: (context, state) {
                      if (state is UserInValid) {
                        return SizedBox(
                          child: Text(
                            state.errorMsg,
                            style: TextStyle(color: Colors.red),
                          ),
                        );
                      } else {
                        return SizedBox();
                      }
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    child: TextField(
                      controller: emailControl,
                      onChanged: (val) {
                        setState(() {
                          // emailV = val;
                        });
                        // BlocProvider.of<UserBloc>(context).add(
                        //     TextFieldHandel(emailControl.text, passControl.text));
                      },
                      decoration: InputDecoration(hintText: 'Email address'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Password'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    child: ElevatedButton(
                        onPressed: () {
                          context.read<LoginCubit>().loggedIn(emailV);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage()));
                        },
                        child: Text("Log In")),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BlocBuilder<LoginCubit, LoginState>(
                        builder: (context, state) {
                          return Text("user is ${state.email}");
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
