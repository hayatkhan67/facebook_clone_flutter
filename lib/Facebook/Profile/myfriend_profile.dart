import 'package:bano_qabil_project/data/fb_data.dart';
import 'package:bano_qabil_project/widget/custom_Divider.dart';
import 'package:bano_qabil_project/widget/custom_ElevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../widget/customText.dart';
import '../../widget/custom_appbar.dart';
import '../../widget/custom_post.dart';
import '../Chats/chats_home.dart';
import 'friend_list.dart';

class MyFriend extends StatefulWidget {
  const MyFriend({super.key, required this.friendData});

  final FriendData? friendData;

  @override
  State<MyFriend> createState() => _MyFriendState();
}

class _MyFriendState extends State<MyFriend> {
  var data = fbData;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 800;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(
        barHeigth: 45,
        centerTitle: true,
        title: MyText(text: widget.friendData!.name),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 8,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: isDesktop ? h * 0.60 : 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          data[0].post![0].friendPost![2].toString()),
                      fit: BoxFit.cover)),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 7,
                    bottom: -45,
                    child: Hero(
                      tag: widget.friendData!.image.toString(),
                      child: CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 73,
                          backgroundImage:
                              AssetImage(widget.friendData!.image.toString()),
                          onBackgroundImageError: (exception, stackTrace) =>
                              const Icon(Icons.error),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 47,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                MyText(
                  text: widget.friendData!.name,
                  fWeight: FontWeight.bold,
                  size: 18,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 214, 204, 204),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_add_alt_1,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: MyText(
                                  text: 'Friends',
                                  maxline: 1,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      )),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChatHomePage(
                                chatData: ChatData(
                                    userName: widget.friendData!.name,
                                    image: widget.friendData!.image,
                                    message: 'How are you')),
                          ));
                    },
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              MdiIcons.facebookMessenger,
                              color: Colors.white,
                            ),
                            const Expanded(
                              child: Center(
                                child: MyText(
                                    text: 'Message',
                                    maxline: 1,
                                    overflow: TextOverflow.ellipsis,
                                    color: Colors.white),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 214, 204, 204),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ))
              ],
            ),
            const MyDivider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 197, 225, 238),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: MyText(
                              text: 'Post',
                              color: Colors.blue[800],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const MyText(
                          text: 'Reels',
                          fWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  const MyDivider(
                    thick: 2,
                  ),
                  const MyText(
                    text: 'Details',
                    fWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ...List.generate(
                      idDetailIcon.length,
                      (index) => Row(
                            children: [
                              Icon(
                                idDetailIcon[index],
                                size: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              MyText(
                                text: idDetailInfo[index],
                                size: 17,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          )),
                  const MyDivider(
                    thick: 1,
                  ),
                  ListTile(
                    title: const MyText(
                      text: 'Friends',
                      fWeight: FontWeight.bold,
                      size: 17,
                    ),
                    subtitle:
                        MyText(text: data[0].friendsImages!.length.toString()),
                    trailing: const MyText(
                      text: 'Find Friends',
                      color: Color.fromARGB(255, 129, 195, 250),
                    ),
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 05,
                        mainAxisSpacing: 10,
                        mainAxisExtent: isDesktop
                            ? MediaQuery.of(context).size.height * 0.45
                            : MediaQuery.of(context).size.height * 0.26),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyFriend(
                                    friendData: FriendData(
                                        image: data[0].friendsImages![index],
                                        name: data[0].friendsNames![index])),
                              ));
                        },
                        child: Column(
                          children: [
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          data[0].friendsImages![index]),
                                      fit: BoxFit.fill),
                                  color:
                                      const Color.fromARGB(255, 214, 204, 204),
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                            )),
                            Container(
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                border: Border.all(color: Colors.black),
                              ),
                              child: Center(
                                  child: MyText(
                                text: data[0].friendsNames![index],
                                align: TextAlign.center,
                              )),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FriendList(
                                  userName: widget.friendData!.name.toString(),
                                  data: FriendlistData(
                                      image: data[0].friendsImages,
                                      userName: data[0].friendsNames)),
                            ));
                      },
                      sizeHeight: 30,
                      color: const Color.fromARGB(255, 214, 204, 204),
                      child: const MyText(text: 'See all friends'),
                    ),
                  ),
                  const MyDivider(
                    thick: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText(
                        text: '${widget.friendData!.name}\'s posts',
                        fWeight: FontWeight.bold,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(data[0].profileImage.toString()),
              ),
              title: MyText(
                text: 'Write something to ${widget.friendData!.name}',
                maxline: 1,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      color: Colors.white,
                    ),
                    child: const Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.penToSquare,
                          size: 17,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyText(
                          text: 'Write Post',
                          color: Colors.black,
                        )
                      ],
                    )),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      color: Colors.white,
                    ),
                    child: const Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.photo,
                          color: Colors.green,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        MyText(
                          text: 'Share Photo',
                          color: Colors.black,
                        )
                      ],
                    )),
                  ),
                )
              ],
            ),
            const MyDivider(),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 100,
                margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                  children: [
                    Icon(Icons.photo),
                    MyText(
                      text: 'Photos',
                    )
                  ],
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: data[0].post![0].friendPost!.length,
              itemBuilder: (context, index) => CustomPostContainer(
                userName: widget.friendData!.name,
                profileImage: widget.friendData!.image,
                postImage: data[0].post![0].friendPost![index],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FriendData {
  String? name;
  String? image;

  FriendData({this.name, this.image});
}
