import 'package:bano_qabil_project/splash%20screen&onboarding/splash_screen.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.white,
            iconTheme: IconThemeData(color: Colors.black)),
      ),
      home: const SplashScreen(),
    );
  }
}

//pending tasks
// profile tab bar 
// setting bottom sheet
//chat home textfield fix pending
// chat navigation //complete 