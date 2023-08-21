import 'dart:async';
import 'package:bano_qabil_project/splash%20screen&onboarding/onboarding.dart';
import 'package:bano_qabil_project/widget/customText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 6), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingScreen(),
          ));
    });
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Lottie.asset('assets/lottie/animation_llksal25.json'),
                  ],
                ),
              ),
            ),
            const MyText(
              text: 'from',
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.meta,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  MyText(
                    text: 'Meta',
                    size: 20,
                    color: Colors.black,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
