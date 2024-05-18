// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shopa/screens/auth/login.dart';
import 'package:shopa/utils/colors.dart';
import 'package:shopa/utils/textstyles.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  void skip() {
    // print('i have been skipped');
    Get.offAll(Login());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
              title: '',
              bodyWidget: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('1/3'),
                      GestureDetector(
                        child: Text(
                          'skip',
                          style: text18,
                        ),
                        onTap: () {
                          skip();
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/images/onboard_1.png'),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Choose Products',
                    style: text24Bold,
                  ),
                  Text(
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                    style: text14Light,
                  ),
                ],
              )),
          PageViewModel(
              title: '',
              bodyWidget: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('2/3'),
                      GestureDetector(
                        child: Text(
                          'skip',
                          style: text18,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/images/onboard_2.png'),
                  SizedBox(
                    height: 40,
                  ),
                  Text('Make Payment', style: text24Bold),
                  Text(
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                      style: text14Light),
                ],
              )),
          PageViewModel(
              title: '',
              bodyWidget: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('3/3'),
                      GestureDetector(
                        child: Text(
                          'skip',
                          style: text18,
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Image.asset('assets/images/onboard_3.png'),
                  SizedBox(
                    height: 40,
                  ),
                  Text('Get Your Order', style: text24Bold),
                  Text(
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                      style: text14Light),
                ],
              )),
        ],
        showSkipButton: false,
        skip: const Icon(Icons.skip_next),
        next: Text(
          "Next",
          style: text18.copyWith(color: primaryColor),
        ),
        showBackButton: true,
        back: Text(
          'prev',
          style: text18,
        ),
        done: Text("get started",
            style: text18.copyWith(color: primaryColor, fontSize: 16)),
        onDone: () {
          // On Done button pressed
        },
        onSkip: () {
          // On Skip button pressed
          skip();
        },
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(50.0, 10.0),
          activeColor: primaryColor,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
      ),
    );
  }
}
