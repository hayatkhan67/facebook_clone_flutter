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
      ])
];
// 5B:85:FE:9E:6C:EE:09:34:50:C2:C8:39:52:64:84:00:3E:1E:38:C9