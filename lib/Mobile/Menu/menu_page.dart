import 'package:bano_qabil_project/Mobile/Menu/setting&privacy/settings.dart';
import 'package:bano_qabil_project/Mobile/Menu/setting_privacy.dart';
import 'package:bano_qabil_project/Mobile/Profile/my_profile.dart';
import 'package:bano_qabil_project/data/images.dart';
import 'package:bano_qabil_project/widget/navigator_widget.dart';
import 'package:flutter/material.dart';

import '../../Login_page/login_page.dart';
import '../../widget/circle_icon.dart';
import '../../widget/customText.dart';
import '../../widget/custom_ElevatedButton.dart';
import '../../widget/custom_appbar.dart';

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

  ExpansionTileController tilesController = ExpansionTileController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdfe2e4),
      appBar: CustomAppBar(
        color: const Color(0xffdfe2e4),
        leading: const SizedBox(),
        title: const Text('Menu',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30)),
        centerTitle: false,
        leadingWidth: 1,
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleIcon(
              icon: Icons.search,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white,
                child: ListTile(
                  onTap: () {
                    myNavigator(
                      context,
                      const MyProfile(isBack: true),
                    );
                  },
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage(hayat),
                  ),
                  title: const Text('Hayat Khan'),
                  subtitle: const Text('see your profile'),
                ),
              ),
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
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
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
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        shortcutIcons[index],
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
            ExpansionTile(
              controller: tilesController,
              leading: const Icon(Icons.question_mark_outlined),
              title: const MyText(text: 'Help & Support'),
            ),
            const Divider(
              thickness: 0.8,
              height: 1,
              color: Colors.grey,
            ),
            const SettingPrivacy(),
            const Divider(
              thickness: 0.8,
              height: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const MyText(text: 'Are you sure'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                  (route) => false);
                            },
                            child: const MyText(text: 'Yes')),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const MyText(text: 'No'))
                      ],
                    ),
                  );
                },
                color: Colors.white,
                sizeHeight: 30.0,
                elevation: 1,
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
