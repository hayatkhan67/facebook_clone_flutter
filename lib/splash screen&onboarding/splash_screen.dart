import 'dart:async';
import 'package:bano_qabil_project/splash%20screen&onboarding/onboarding.dart';
import 'package:bano_qabil_project/widget/customText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
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
        backgroundColor: Colors.white30,
        body: Column(
          children: [
            const Spacer(),
            Icon(
              MdiIcons.facebook,
              color: Colors.white,
              size: 100,
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
            const MyText(
              text: 'from',
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.meta,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  MyText(
                    text: 'Meta',
                    size: 20,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
