// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shopa/screens/auth/login.dart';
import 'package:shopa/utils/colors.dart';
import 'package:shopa/utils/textstyles.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _LoginState();
}

class _LoginState extends State<Signup> {
  void login() {
    Get.offAll(Login());
  }

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
                  'Create an',
                  style: text36,
                ),
                Text(
                  'account',
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
                  height: 30,
                ),
                TextFormField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  // hintText: 'username',
                  labelText: 'confirm password',
                  suffixIcon: Icon(Icons.visibility),
                )),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'By clicking the Register button, you agree to the public offer',
                  style: text12.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff676767),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text('Create Account'),
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
                      'I Already Have an Account',
                      style: text14Light,
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      child: Text('Login', style: text14Bold),
                      onTap: () {
                        login();
                      },
                    ),
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
