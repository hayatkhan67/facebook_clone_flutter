import 'package:flutter/material.dart';

import '../../../utils/data/fb_data.dart';
import '../../../widgets/circle_icon.dart';
import '../../../widgets/customText.dart';

class Column3 extends StatelessWidget {
  const Column3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: MyText(
              text: 'Freinds',
              size: 22,
              fWeight: FontWeight.bold,
            ),
          ),
          ListView.builder(
            itemCount: fbData[0].friendsNames!.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) => ListTile(
              leading: CircleIcon(
                image: AssetImage(fbData[0].friendsImages![index]),
              ),
              title: MyText(
                text: fbData[0].friendsNames![index],
                fWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
