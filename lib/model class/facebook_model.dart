class User{
  String? userName;
  String? profileImage;
  String? userBanner;
  List? friendsImages;
  List? friendsBanner;
  List? friendsNames;
  List <Post>? post;

  User({this.friendsBanner,this.userBanner ,this.userName,this.profileImage,this.friendsImages,this.friendsNames,this.post});
}
class Post{
 List? userPosts;
 List? userPostsText;

 Post({this.userPosts,this.userPostsText});
}