import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopa/screens/splash_screens/onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void nextScreen() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(const Onboarding());
  }

  @override
  void initState() {
    print('i have landed');
    nextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Image.asset("assets/images/logo.png"),
        ),
      ),
    );
  }
}
