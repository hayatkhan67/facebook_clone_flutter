import 'dart:async';
import 'package:bano_qabil_project/Login_page/login_page.dart';
import 'package:flutter/material.dart';

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
            builder: (context) => const LoginPage(),
          ));
    });
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
            ),
            const Icon(
              Icons.facebook,
              size: 100,
              color: Colors.white,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.40,
            ),
            Column(
              children: [
                const Text('from'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: const AssetImage(
                        'assets/facebook/loginpage/hd-meta-facebook-white-logo-png-116403446124ydgyipr3u-removebg-preview.png'),
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
