import 'dart:async';
import 'package:bano_qabil_project/screens/view/splash_onboarding_module/onboarding.dart';
import 'package:bano_qabil_project/widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

import '../../../widgets/navigator_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      myNavigator(
        context,
        const OnboardingScreen(),
      );
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
              child: Column(
                children: [
                  const Spacer(),
                  Lottie.asset('assets/lottie/animation_llksal25.json',
                      height: 200, fit: BoxFit.cover),
                  const Spacer(),
                ],
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
