
import 'package:flutter/material.dart';

import '../data/fb_data.dart';
import '../data/images.dart';
import '../widget/circle_icon.dart';
import '../widget/customText.dart';

class Column1 extends StatelessWidget {
  const Column1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const ListTile(
            leading: CircleIcon(
              image: AssetImage(hayat),
            ),
            title: MyText(
              text: 'Hayat Khan',
              fWeight: FontWeight.bold,
            ),
          ),
          ListView.builder(
              itemCount: desktopIcon.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                    minLeadingWidth: 30,
                    leading: desktopIcon[index],
                    title: MyText(text: desktopIconName[index]),
                  ))
        ],
      ),
    );
  }
}
