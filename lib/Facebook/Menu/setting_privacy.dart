import 'package:bano_qabil_project/Facebook/Menu/setting&privacy/device_request.dart';
import 'package:bano_qabil_project/Facebook/Menu/setting&privacy/link_history.dart';
import 'package:bano_qabil_project/Facebook/Menu/setting&privacy/order_payments.dart';
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
    const OrderPayment(),
  ];
  bool dark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark == false ? Colors.white : const Color(0xff181818),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: dark == false ? Colors.black : Colors.white,
        ),
        backgroundColor: dark == false ? Colors.white : const Color(0xff181818),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          tooltip: 'Back',
        ),
        title: MyText(
          text: 'Settings & Privacy',
          color: dark == false ? Colors.black : Colors.white,
          fWeight: FontWeight.w500,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  dark = !dark;
                });
              },
              icon: const Icon(Icons.dark_mode)),
        ],
        elevation: 1.0,
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
