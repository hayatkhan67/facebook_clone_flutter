import 'package:bano_qabil_project/Facebook/Menu/setting&privacy/device_request.dart';
import 'package:bano_qabil_project/Facebook/Menu/setting&privacy/link_history.dart';
import 'package:bano_qabil_project/Facebook/Menu/setting&privacy/recent_ad.dart';
import 'package:bano_qabil_project/Facebook/Menu/setting&privacy/settings.dart';
import 'package:bano_qabil_project/widget/customText.dart';
import 'package:flutter/material.dart';

class SeetingsPrivacy extends StatefulWidget {
  const SeetingsPrivacy({super.key});

  @override
  State<SeetingsPrivacy> createState() => _SeetingsPrivacyState();
}

class _SeetingsPrivacyState extends State<SeetingsPrivacy> {
  List buttonIcons = [
    Icons.person,
    Icons.link,
    Icons.remove_from_queue,
    Icons.ad_units_outlined,
    Icons.payment
  ];
  List buttonNames = [
    'Settings',
    'Link history',
    'Device request',
    'Recent ad activity',
    'Orders and payments'
  ];
  List destinations = [
    Settings(),
    const LinkHistory(),
    const DeviceRequest(),
    const RecenetAd(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
          tooltip: 'Back',
        ),
        title: const MyText(
          text: 'Settings & Privacy',
          fWeight: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: List.generate(
              buttonIcons.length,
              (index) => Card(
                    color: Colors.grey.shade200,
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => destinations[index],
                            ));
                      },
                      minLeadingWidth: 10,
                      leading: Icon(buttonIcons[index]),
                      title: MyText(text: buttonNames[index]),
                    ),
                  )),
        ),
      ),
    );
  }
}
