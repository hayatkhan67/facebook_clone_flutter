import 'package:flutter/material.dart';

import '../../../widgets/customText.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key, required this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue.shade50, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: MyText(text: title!),
          )),
        ],
      ),
    );
  }
}
