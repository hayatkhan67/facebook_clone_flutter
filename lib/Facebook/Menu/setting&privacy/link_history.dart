import 'package:flutter/material.dart';

import '../../../widget/customText.dart';

class LinkHistory extends StatelessWidget {
  const LinkHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          tooltip: 'Back',
        ),
        title: const MyText(
          text: 'Link History',
          fWeight: FontWeight.w500,
          size: 17.0,
        ),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(text: 'Recently visited'),
                MyText(text: 'clear all'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const MyText(text: 'Yesterday'),
            ListTile(
              minLeadingWidth: 20,
              leading: Container(
                height: 70,
                width: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200)),
                child: const Center(
                  child: Icon(Icons.link),
                ),
              ),
              title: const MyText(
                text: 'Facebook Help Center',
                fWeight: FontWeight.w500,
              ),
              subtitle: MyText(
                  text: 'https://www.facebook.com/help',
                  color: Colors.grey.shade500),
              trailing: const Icon(Icons.close),
            ),
          ],
        ),
      ),
    );
  }
}
