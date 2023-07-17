// ignore_for_file: file_names

class UserDetails {
  String? banner;
  String? profilePic;
  String? userName;
  String? totalFriends;
  List? displayFriendsImage;
  List? displayFriendsName;
  List? freindImages;
  List? posts;
  List? postText;

  UserDetails(
      {this.banner,
      this.postText,
      this.freindImages,
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
