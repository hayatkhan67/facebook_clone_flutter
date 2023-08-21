import 'dart:math';

import 'package:flutter/material.dart';

import '../../data/fb_data.dart';
import '../../widget/customText.dart';
import '../../widget/custom_appbar.dart';
import 'bottom_sheet.dart';
import 'friend_request.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  //adding friends detail like dp name in notifications variable
  var notifications = fbData;
  //added random hours for notification
  List<String> textIndex = [];

  @override
  Widget build(BuildContext context) {
    // try random number genrate
    List randomHours = List.generate(notifications[0].friendsNames!.length,
        (index) => Random().nextInt(24) + 1);

    //adding for loop to acces random Hours value 1 by 1
    for (int i = 0; i < randomHours.length; i++) {
      var now = randomHours[i].toString();
      textIndex.add(now);
    }
    return Scaffold(
      appBar: CustomAppBar(
        leading: const SizedBox(),
        leadingWidth: 1,
        title: const MyText(
          text: 'Notifications',
          fWeight: FontWeight.bold,
          size: 18,
        ),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    context: context,
                    builder: (context) => const NotificationSetting());
              },
              icon: const Icon(Icons.settings)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: ListView(
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
              notifications[0].friendsNames!.length,
              (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.amber,
                      backgroundImage:
                          AssetImage(notifications[0].friendsImages![index]),
                    ),
                    title: MyText(
                        text:
                            '${notifications[0].friendsNames![index]} added a new post'),
                    subtitle: MyText(text: '${textIndex[index]} h'),
                    trailing: const Icon(Icons.more_horiz_outlined),
                  )),

          //adding friend request sample and see all button to navigate friend request page

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MyText(
                  text: 'Friend Requests',
                  fWeight: FontWeight.bold,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FriendRequestList(),
                        ));
                  },
                  child: const MyText(
                    text: 'see all',
                    color: Colors.blue,
                    fWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),

          //adding list tile sample
          ...List.generate(
            2,
            (index) => ListTile(
              minVerticalPadding: 10,
              horizontalTitleGap: 2,
              leading: CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage(
                      notifications[0].friendRequest![0].image![index])),
              title: MyText(
                text:
                    '${notifications[0].friendRequest![0].name![index]} sent a friend request',
                size: 17.0,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyText(
                    text: 'Khan Amir and 5 other mutual friends',
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const MyText(
                              text: 'Confirm',
                              color: Colors.white,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade100),
                            child: const MyText(
                                text: 'Delete', color: Colors.black)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
