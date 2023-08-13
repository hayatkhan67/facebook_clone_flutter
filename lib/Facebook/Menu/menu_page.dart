import 'package:bano_qabil_project/Facebook/Menu/setting_privacy.dart';
import 'package:bano_qabil_project/Facebook/Menu/setting&privacy/settings.dart';
import 'package:bano_qabil_project/Facebook/Profile/user_Profile.dart';
import 'package:bano_qabil_project/Login_page/login_page.dart';
import 'package:bano_qabil_project/widget/customText.dart';
import 'package:bano_qabil_project/widget/fb_drawer.dart';
import 'package:flutter/material.dart';

import '../../widget/circle_icon.dart';
import '../../widget/custom_ElevatedButton.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

var currentIndex = 0;

class _MenuState extends State<Menu> {
  List shortcutIcons = const [
    Icon(
      Icons.video_library_outlined,
      color: Colors.blue,
    ),
    Icon(
      Icons.groups_2,
      color: Colors.blue,
    ),
    Icon(
      Icons.save,
      color: Colors.blue,
    ),
    Icon(
      Icons.flag,
      color: Colors.orange,
    ),
    Icon(
      Icons.video_collection_sharp,
      color: Colors.red,
    ),
    Icon(
      Icons.newspaper,
      color: Color.fromARGB(255, 136, 177, 211),
    ),
    // Icon(Icons.group,color: Colors.blue,),
  ];
  List shortcutText = const [
    'Videos on watch',
    'Groups',
    'Saved',
    'Pages',
    'Reels',
    'Feeds'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30)),
        centerTitle: false,
        leadingWidth: 25,
        elevation: 0,
        actions: [
          CircleIcon(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),
                  ));
            },
            icon: Icons.settings,
            color: Colors.black,
          ),
          const CircleIcon(
            icon: Icons.search,
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserProfile(isBack: true),
                    ));
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg'),
              ),
              title: const Text('Hayat Khan'),
              subtitle: const Text('see your profile'),
            ),
            const Divider(
              thickness: 0.8,
              height: 1,
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'All shortcuts',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: shortcutIcons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    mainAxisExtent: 90),
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        shortcutIcons[index],
                        // Icon(
                        //   Icons.videocam_outlined,
                        //   color: Colors.blue,
                        // ),
                        Text(shortcutText[index])
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Divider(
              thickness: 0.8,
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: const Icon(Icons.question_mark_outlined,
                    color: Colors.black),
              ),
              title: const MyText(text: 'Help & Support'),
            ),
            const Divider(
              thickness: 0.8,
              height: 1,
              color: Colors.grey,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SeetingsPrivacy(),
                    ));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: const Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
              ),
              title: const MyText(text: 'Settings & Privacy'),
            ),
            const Divider(
              thickness: 0.8,
              height: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                      (route) => false);
                },
                color: Colors.grey.shade400,
                sizeHeight: 30.0,
                child: const MyText(
                  text: 'Log out',
                  fWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
