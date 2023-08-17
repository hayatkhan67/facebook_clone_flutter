import 'package:flutter/material.dart';

import '../api/api_get.dart';
import '../api/shop_api/shopHome.dart';
import 'customText.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 162, 199, 230),
      child: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ApiGet(),
                  ));
            },
            leading: const Icon(Icons.api),
            title: const MyText(text: 'Facebook News'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ));
            },
            leading: const Icon(Icons.shop),
            title: const MyText(text: 'MarketPlace'),
          )
        ],
      ),
    );
  }
}
