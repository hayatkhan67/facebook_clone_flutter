import 'package:flutter/material.dart';

import 'Facebook/Profile/friend_list.dart';
import 'Facebook/Profile/friends_profile.dart';
import 'Facebook/Profile/user_Profile.dart';



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
      home: const UserProfile(),
    );
  }
}

// pending tasks
// profile tab bar 
// setting bottom sheet
// chat home textfield fix pending
// chat navigation //complete 
// friends banner and post pending