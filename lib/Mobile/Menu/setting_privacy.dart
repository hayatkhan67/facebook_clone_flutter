import 'package:flutter/material.dart';

import '../../data/fb_data.dart';
import '../../widget/customText.dart';
import '../../widget/navigator_widget.dart';

class SettingPrivacy extends StatefulWidget {
  const SettingPrivacy({super.key});

  @override
  State<SettingPrivacy> createState() => _SettingPrivacyState();
}

class _SettingPrivacyState extends State<SettingPrivacy> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        leading: const Icon(Icons.settings),
        title: const MyText(text: 'Settings & Privacy'),
        children: List.generate(menuButtonIcons.length, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Card(
              color: Colors.white,
              child: ListTile(
                onTap: () {
                  myNavigator(context, menuButtondestinations[index]);
                },
                minLeadingWidth: 10,
                leading: Icon(menuButtonIcons[index]),
                title: MyText(text: menuButtonNames[index]),
              ),
            ),
          );
        }));
  }
}
