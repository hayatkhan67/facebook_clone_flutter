import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../Mobile/Menu/setting&privacy/device_request.dart';
import '../Mobile/Menu/setting&privacy/link_history.dart';
import '../Mobile/Menu/setting&privacy/order_payments.dart';
import '../Mobile/Menu/setting&privacy/recent_ad.dart';
import '../Mobile/Menu/setting&privacy/settings.dart';
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

List menuButtonIcons = [
  Icons.account_circle,
  Icons.link,
  Icons.remove_from_queue,
  Icons.ad_units_outlined,
  Icons.payment
];
List menuButtonNames = [
  'Settings',
  'Link history',
  'Device request',
  'Recent ad activity',
  'Orders and payments'
];
List menuButtondestinations = [
  Settings(),
  const LinkHistory(),
  const DeviceRequest(),
  const RecentAd(),
  const OrderPayment(),
];

List story = [
  'https://images.unsplash.com/photo-1692767873267-fba0f7d85011?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDR8anIxWGRvWFBuWWN8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1606897116339-150d0f3c3103?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDIxfGpyMVhkb1hQblljfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1692650656084-ea7b8a055210?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDEzfGpyMVhkb1hQblljfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1692460285275-2a5e79974567?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8anIxWGRvWFBuWWN8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1692650656084-ea7b8a055210?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDEzfGpyMVhkb1hQblljfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1663096911176-76d5507e7d9d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDI2fGpyMVhkb1hQblljfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1627322120179-2b15e3ef11b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDM1fGpyMVhkb1hQblljfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1665941767326-ba859ae9a310?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDQyfGpyMVhkb1hQblljfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1683620621763-f511f3202edd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDQ3fGpyMVhkb1hQblljfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1692343698399-5432225478d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDU1fGpyMVhkb1hQblljfHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
];
