import 'package:bano_qabil_project/screens/view/profile_module/my_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../services/api/shopHome.dart';
import '../screens/view/notification_module/notifications.dart';
import '../screens/view/menu_module/menu_page.dart';
import '../screens/view/desktop_module/desktop_homepage.dart';
import '../screens/view/home/homepage.dart';

class MyNavigatorBar extends StatefulWidget {
  const MyNavigatorBar({super.key});

  @override
  State<MyNavigatorBar> createState() => _MyNavigatorBarState();
}

class _MyNavigatorBarState extends State<MyNavigatorBar> {
  List facebookNavigation = [
    const HomePage(),
    const MyHomePage(isBack: false),
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
      child: w > 800
          ? const DesktopHomePage()
          : Scaffold(
              bottomNavigationBar: NavigationBar(
                  labelBehavior:
                      NavigationDestinationLabelBehavior.onlyShowSelected,
                  animationDuration: const Duration(seconds: 1),
                  height: 60,
                  selectedIndex: currentIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  destinations: const [
                    NavigationDestination(
                        icon: Icon(CupertinoIcons.home), label: 'Home'),
                    NavigationDestination(
                        icon: Icon(CupertinoIcons.shopping_cart),
                        label: 'Shop'),
                    NavigationDestination(
                        icon: Icon(CupertinoIcons.person_crop_circle),
                        label: 'Profile'),
                    NavigationDestination(
                        icon: Icon(CupertinoIcons.bell), label: 'Notification'),
                    NavigationDestination(
                        icon: Icon(Icons.menu), label: 'Menu'),
                  ]),
              body: facebookNavigation[currentIndex],
            ),
    );
  }
}
