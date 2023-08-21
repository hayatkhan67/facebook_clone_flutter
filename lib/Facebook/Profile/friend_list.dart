import 'package:flutter/material.dart';

import '../../widget/customText.dart';
import '../../widget/custom_appbar.dart';
import 'myfriend_profile.dart';

class FriendList extends StatefulWidget {
  const FriendList({super.key, this.userName, this.data});
  final String? userName;
  final FriendlistData? data;
  @override
  State<FriendList> createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: MyText(
          text: '${widget.userName ?? "Hayat Khan Niazi"}\'s Friends List',
          maxline: 1,
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
      body: SingleChildScrollView(
        child: Padding(
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
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.data!.userName!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyFriend(
                              friendData: FriendData(
                                image: widget.data!.image![index],
                                name: widget.data!.userName![index],
                              ),
                            ),
                          ));
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(widget.data!.image![index]),
                      radius: 32,
                    ),
                    title: MyText(text: widget.data!.userName![index]),
                    subtitle:
                        MyText(text: '${widget.data!.userName!.length} mutual'),
                  );
                },
              )
            ],
          ),
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
