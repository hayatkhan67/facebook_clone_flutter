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
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.mail_outline_rounded,
        size: 14,
      ),
      label: const MyText(text: 'Mark all as read'),
    );
  }
}
