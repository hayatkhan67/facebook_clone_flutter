import 'package:flutter/material.dart';

import '../../resources_list/notifii_friends.dart';
import '../../widget/customText.dart';

class FriendRequestList extends StatefulWidget {
  const FriendRequestList({super.key});

  @override
  State<FriendRequestList> createState() => _FriendRequestListState();
}

class _FriendRequestListState extends State<FriendRequestList> {
  var myFriendRequests = friendRequest;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const MyText(
          text: 'Friends',
          fWeight: FontWeight.bold,
          size: 18.0,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: ListView(
        children: [
          ...List.generate(
            myFriendRequests.length,
            (index) => ListTile(
              minVerticalPadding: 10,
              horizontalTitleGap: 2,
              leading: CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage(myFriendRequests[index].dp)),
              title: MyText(
                text: '${myFriendRequests[index].name} sent a friend request',
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
