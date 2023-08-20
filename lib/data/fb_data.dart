import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../model class/facebook_model.dart';
import 'images.dart';

List<User> fbData = [
  User(
    userName: 'Hayat Khan',
    profileImage: hayat,
    userBanner: 'assets/facebook/myPost/photo_2023-07-16_08-41-47.jpg',
    friendsImages: [
      wahab,
      kamran,
      amjad,
      shan,
      zain,
      khanAmir,
      hkn,
      hasan,
      alisami,
      hkn,
    ],
    friendsNames: [
      'Wahab Niazi',
      'Kamran Niazi',
      'Amjad',
      'Shan Niazi',
      'Zain Khan Niazi',
      'Khan Amir Niazi',
      'HKN Gaming',
      'Hasan Niazi',
      'AliSami',
      'HKN playz',
    ],
    friendRequest: [
      FriendRequest(image: [
        hkn,
        hasan,
        alisami,
      ], name: [
        'Hkn Gaming',
        "Hasan Niazi",
        'AliSami'
      ])
    ],
    post: [
      Post(userPosts: [
        'assets/facebook/myPost/photo_2023-07-16_08-41-47.jpg',
        'assets/facebook/myPost/photo_2023-07-16_08-41-42.jpg',
        'assets/facebook/myPost/photo_2023-07-16_08-41-47.jpg',
        'assets/facebook/myPost/photo_2023-07-16_08-41-50.jpg'
      ], userPostsText: [
        'group pic',
        'new pic',
        '2020',
        '2023',
      ], friendPost: [
        'assets/facebook/friends/images/download.jpg',
        'assets/facebook/friends/images/images.jpg',
        'assets/facebook/friends/images/s.jpg',
      ]),
    ],
    newsFeedPost: [
      NewsFeedPost(
          postImage: 'assets/facebook/myPost/photo_2023-07-16_08-41-47.jpg',
          userName: 'Hayat Khan',
          profileImage: hayat,
          postText: 'Cousin Group'),
      NewsFeedPost(
          userName: 'Bano Qabil',
          profileImage: banoqabil,
          postImage: banoqabilPost,
          postText: "Registration Open"),
      NewsFeedPost(
          profileImage: hkn,
          userName: "HKN",
          postText:
              "Extract widget\nWriting a large widget tree is difficult to read/understand and can create issues in the performance of the app too. Its always better to split the widget tree in the stateless widgets. More info can be found here."),
      NewsFeedPost(
        userName: 'Khan Amir',
        profileImage: khanAmir,
        postImage: khanAmir,
      ),
      NewsFeedPost(
        userName: 'Hasan Niazi',
        profileImage: hasan,
        postImage: hasan,
      ),
      NewsFeedPost(
        userName: 'kamran',
        profileImage: kamran,
        postImage: kamran,
      ),
      NewsFeedPost(
        userName: 'Wahab',
        profileImage: wahab,
        postImage: wahab,
      ),
    ],
  ),
];
List desktopIcon = [
  Icon(
    MdiIcons.accountSupervisor,
    color: Colors.blue,
    size: 23,
  ),
  const Icon(
    Icons.timer_outlined,
    color: Colors.blue,
  ),
  Icon(
    MdiIcons.accountGroup,
    color: Colors.blue,
  ),
  const Icon(
    Icons.flag,
    color: Colors.orange,
  ),
  Icon(
    MdiIcons.television,
    color: Colors.red,
  ),
  const Icon(
    Icons.newspaper,
    color: Color.fromARGB(255, 136, 177, 211),
  ),
];
List desktopIconName = [
  'Friends',
  'Memories',
  'Groups',
  'Pages',
  "Videos",
  "Feeds"
];

List idDetailIcon = [
  Icons.home,
  Icons.location_on_sharp,
  FontAwesomeIcons.heart,
  Icons.more_horiz_outlined
];
List idDetailInfo = [
  'Lives in Karachi,Pakistan',
  'from Mianwali',
  'Single',
  'See Your About Info'
];
