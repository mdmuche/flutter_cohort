// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopa/utils/colors.dart';
import 'package:shopa/utils/textstyles.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: text36,
                ),
                Text(
                  'Back!',
                  style: text36,
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    // hintText: 'username',
                    labelText: 'username or email',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  // hintText: 'username',
                  labelText: 'password',
                  suffixIcon: Icon(Icons.visibility),
                )),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'forgot password',
                      style: text12,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '- OR Continue with -',
                      style: text12.copyWith(color: black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xfffcf3f6),
                          border: Border.all(
                            color: primaryColor,
                          )),
                      child: Image.asset('assets/images/google1.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xfffcf3f6),
                          border: Border.all(
                            color: primaryColor,
                          )),
                      child: Icon(
                        Icons.apple,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xfffcf3f6),
                          border: Border.all(
                            color: primaryColor,
                          )),
                      child: Image.asset('assets/images/f1.png'),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Create An Account',
                      style: text14Light,
                    ),
                    SizedBox(width: 10),
                    Text('Sign Up', style: text14Bold),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
