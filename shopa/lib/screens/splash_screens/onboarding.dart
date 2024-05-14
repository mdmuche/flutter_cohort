// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  void skip() {
    print('i have been skipped');
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
                        child: Text('skip'),
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
                  Text('Choose Products'),
                  Text(
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'),
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
                        child: Text('skip'),
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
                  Text('Make Payment'),
                  Text(
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'),
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
                        child: Text('skip'),
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
                  Text('Get Your Order'),
                  Text(
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'),
                ],
              )),
        ],
        showSkipButton: false,
        skip: const Icon(Icons.skip_next),
        next: const Text("Next"),
        showBackButton: true,
        back: Text('previous'),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w700)),
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
          activeColor: Colors.red,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        ),
      ),
    );
  }
}
