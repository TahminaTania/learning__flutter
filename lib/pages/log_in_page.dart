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
  TextEditingController nameControl = TextEditingController();
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
    final loginCubit = BlocProvider.of<LoginCubit>(context);
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
                      if (state is LoginError) {
                        return Text(state.errorMessage,
                            style: TextStyle(color: Colors.red));
                      } else {
                        return Container();
                      }
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    child: TextField(
                      controller: nameControl,
                      decoration: InputDecoration(hintText: 'UserName'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: TextField(
                      controller: emailControl,
                      decoration: InputDecoration(hintText: 'Email address'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    child: TextField(
                      controller: passControl,
                      decoration: InputDecoration(hintText: 'Password'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    child: ElevatedButton(
                        onPressed: () {
                          final email = emailControl.text;
                          final password = passControl.text;
                          final name = nameControl.text;
                          loginCubit.login(email, password, name);
                        },
                        child: Text("Log In")),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    child: BlocBuilder<LoginCubit, LoginState>(
                      builder: (context, state) {
                        if (state is LoginLoading) {
                          return CircularProgressIndicator();
                        } else if (state is LoginSuccess) {
                          // Navigate to the HomePage
                          Future.delayed(Duration(seconds: 2), () {
                            Navigator.pushReplacementNamed(context, '/home',
                                arguments: nameControl.text);
                          });

                          return Text('Login successful!');
                        } else {
                          return SizedBox();
                        }
                      },
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
