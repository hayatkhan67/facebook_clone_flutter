import 'package:flutter/material.dart';

import '../../widget/customText.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(double.maxFinite, 30),
                backgroundColor: Colors.white),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: const Icon(
                    Icons.mail_outline_rounded,
                    size: 14,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const MyText(text: 'Mark all as read'),
              ],
            )),
      ],
    );
  }
}
