import 'package:flutter/material.dart';

import 'Login_page/login_page.dart';


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
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.white,
            iconTheme: IconThemeData(color: Colors.black)),
      ),
      home: const LoginPage(),
    );
  }
}

//pending tasks
// profile tab bar 
// setting bottom sheet
//chat home textfield fix pending
// chat navigation //complete 