// import 'package:bano_qabil_project/Facebook/splash_screen.dart';
import 'package:bano_qabil_project/Facebook/Chats/chats_home.dart';
import 'package:bano_qabil_project/Facebook/Settings/settings.dart';
import 'package:bano_qabil_project/Facebook/splash_screen.dart';
import 'package:flutter/material.dart';

import 'Facebook/my_bottom_sheet.dart';

// import 'Facebook/Chats/chats_home.dart';

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
      home: Settings(),
      // home: const ForgetPassword(),
    );
  }
}
