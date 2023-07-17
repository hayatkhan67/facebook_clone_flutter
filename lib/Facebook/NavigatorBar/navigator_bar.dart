import 'package:bano_qabil_project/Facebook/homepage/homepage.dart';
import 'package:bano_qabil_project/Facebook/Profile/user_Profile.dart';
import 'package:flutter/material.dart';
import '../Notifications/notifications.dart';
import '../Settings/menu_page.dart';

class MyNavigatorBar extends StatefulWidget {
  const MyNavigatorBar({super.key});

  @override
  State<MyNavigatorBar> createState() => _MyNavigatorBarState();
}

class _MyNavigatorBarState extends State<MyNavigatorBar> {
  List facebookNavigation = const [
    HomePage(),
    Center(
      child: Text(
        'Videos',
        style: TextStyle(fontSize: 42),
      ),
    ),
    UserProfile(),
    Notifications(),
    Menu()
  ];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          height: 60,
          selectedIndex: currentIndex,
          onDestinationSelected: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.video_library_outlined), label: 'Videos'),
            NavigationDestination(
                icon: Icon(Icons.person_2_outlined), label: 'Profile'),
            NavigationDestination(
                icon: Icon(Icons.notifications_outlined),
                label: 'Notification'),
            NavigationDestination(icon: Icon(Icons.menu), label: 'Menu'),
          ]),
      body: facebookNavigation[currentIndex],
    );
  }
}
