import 'package:bano_qabil_project/widget/customText.dart';
import 'package:flutter/material.dart';

import '../../api/shop_api/shopHome.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(isBack: true),
                  ));
            },
            leading: const Icon(Icons.shopping_cart),
            title: const MyText(text: 'MarketPlace'),
          )
        ],
      ),
    );
  }
}
