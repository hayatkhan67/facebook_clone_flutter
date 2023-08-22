import 'package:bano_qabil_project/Facebook/Profile/my_profile.dart';
import 'package:flutter/material.dart';
import '../Notifications/notifications.dart';
import '../Menu/menu_page.dart';
import '../Watch_videos/chewievideo.dart';
import '../../desktop/desktop_homepage.dart';
import '../homepage/homepage.dart';

class MyNavigatorBar extends StatefulWidget {
  const MyNavigatorBar({super.key});

  @override
  State<MyNavigatorBar> createState() => _MyNavigatorBarState();
}

class _MyNavigatorBarState extends State<MyNavigatorBar> {
  List facebookNavigation = [
    const HomePage(),
    const Videos(),
    const MyProfile(isBack: false),
    const Notifications(),
    const Menu()
  ];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: w > 1100
          ? const DesktopHomePage()
          : Scaffold(
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
                        icon: Icon(Icons.personal_video_outlined),
                        label: 'Videos'),
                    NavigationDestination(
                        icon: Icon(Icons.person_2_outlined), label: 'Profile'),
                    NavigationDestination(
                        icon: Icon(Icons.notifications_outlined),
                        label: 'Notification'),
                    NavigationDestination(
                        icon: Icon(Icons.menu), label: 'Menu'),
                  ]),
              body: facebookNavigation[currentIndex],
            ),
    );
  }
}
