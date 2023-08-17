import 'package:flutter/material.dart';

import '../../data/fb_data.dart';
import '../../widget/customText.dart';
import 'friends_profile.dart';

class FriendList extends StatefulWidget {
  const FriendList({super.key, this.userName, this.data});
  final String? userName;
  final FriendlistData? data;
  @override
  State<FriendList> createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  var data = fbData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: MyText(
          text: '${widget.userName ?? "Hayat Khan Niazi"}\'s friends List',
          size: 18,
          fWeight: FontWeight.bold,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: MyText(
                text: 'Friends',
                size: 22,
                fWeight: FontWeight.bold,
              ),
            ),
            ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FriendProfile(
                            image: data[0].friendsImages![index],
                            userName: data[0].friendsNames![index],
                          ),
                        ));
                  },
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(data[0].friendsImages![index]),
                    radius: 32,
                  ),
                  title: MyText(text: data[0].friendsNames![index]),
                  subtitle:
                      MyText(text: '${data[0].friendsNames!.length} mutual'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class FriendlistData {
  List? userName;
  List? image;
  FriendlistData({this.image, this.userName});
}
