// ignore_for_file: file_names

class UserDetails {
  String? banner;
  String? profilePic;
  String? userName;
  String? totalFriends;
  List? displayFriendsImage;
  List? displayFriendsName;
  List? freindsImages;
  List? freindsName;
  List? posts;
  List? postText;

  UserDetails(
      {this.banner,
      this.postText,
      this.freindsImages,
      this.freindsName,
      this.profilePic,
      this.totalFriends,
      this.userName,
      this.displayFriendsImage,
      this.posts,
      this.displayFriendsName});
}

class Posts {
  List? image;
  List? text;
  Posts({this.image, this.text});
}
List friendDetails=[
  UserDetails(
    freindsImages: [
         'assets/facebook/friends/images/photo_1_2023-07-10_20-06-17.jpg',
          'assets/facebook/friends/images/photo_2023-07-15_21-12-22.jpg',
          'assets/facebook/friends/images/photo_2023-07-15_21-11-48.jpg',
          'assets/facebook/friends/images/photo_2023-07-15_21-12-19.jpg',
          'assets/facebook/friends/images/photo_6_2023-07-10_20-06-17.jpg',
          'assets/facebook/friends/images/photo_5_2023-07-10_20-06-17.jpg',
    ],
 freindsName: [
  'Shan Niazi',
          'Amjad',
          'Zain Khan',
          'Wahab Niazi',
          'Khan Amir Niazi',
          'Iqbal Niazi'
],
displayFriendsImage: [
          'assets/facebook/friends/images/photo_1_2023-07-10_20-06-17.jpg',
          'assets/facebook/friends/images/photo_2023-07-15_21-12-22.jpg',
          'assets/facebook/friends/images/photo_2023-07-15_21-11-48.jpg',
          'assets/facebook/friends/images/photo_2023-07-15_21-12-19.jpg',
          'assets/facebook/friends/images/photo_6_2023-07-10_20-06-17.jpg',
          'assets/facebook/friends/images/photo_5_2023-07-10_20-06-17.jpg',
        ],
        displayFriendsName: [
          'Shan Niazi',
          'Amjad',
          'Zain Khan',
          'Wahab Niazi',
          'Khan Amir Niazi',
          'Iqbal Niazi'
        ],
        profilePic: 'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg',
        totalFriends: '6',
        userName: 'Hayat Khan',
        banner: 'assets/facebook/myPost/photo_2023-07-16_08-41-47.jpg')
];
  
