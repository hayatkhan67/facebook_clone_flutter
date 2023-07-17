import 'dart:math';

import 'package:bano_qabil_project/widget/customText.dart';
import 'package:flutter/material.dart';

import '../../resources_list/details_list.dart';
import 'bottom_sheet.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  //adding friends detail like dp name in user variable
  var user = friends;

  //added random hours for notification
  List<String> textIndex = [];

  @override
  Widget build(BuildContext context) {
    // try random number genrate
    List randomHours =
        List.generate(user.length, (index) => Random().nextInt(24) + 1);

    //adding for loop to acces random Hours value 1 by 1
    for (int i = 0; i < randomHours.length; i++) {
      var now = randomHours[i].toString();
      textIndex.add(now);
    }
    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * 0.07,
        title: MyText(
          text: 'Notifications',
          fWeight: FontWeight.w400,
          size: MediaQuery.of(context).size.width * 0.05,
        ),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => const NotificationSetting());
              },
              icon: const Icon(Icons.settings)),
          const SizedBox(
            width: 10,
          ),
          const Icon(Icons.search)
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: MyText(
              text: 'New',
              fWeight: FontWeight.bold,
            ),
          ),
          //adding a list of notifications
          ...List.generate(
              user.length,
              (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.amber,
                      backgroundImage: AssetImage(user[index].dp),
                    ),
                    title: MyText(text: '${user[index].name} added a new post'),
                    subtitle: MyText(text: '${textIndex[index]} h'),
                    trailing: const Icon(Icons.more_horiz_outlined),
                  )),
        ],
      ),
    );
  }
}
