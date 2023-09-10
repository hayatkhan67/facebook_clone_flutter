import 'package:flutter/material.dart';

import '../../../utils/data/fb_data.dart';
import '../../../utils/data/images.dart';
import '../../../widgets/circle_icon.dart';
import '../../../widgets/customText.dart';

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
