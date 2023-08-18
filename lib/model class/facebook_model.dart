class User {
  String? userName;
  String? profileImage;
  String? userBanner;
  List? friendsImages;
  List? friendsBanner;
  List? friendsNames;
  List<FriendRequest>? friendRequest;
  List<Post>? post;
  List<NewsFeedPost>? newsFeedPost;

  User({
    this.friendsBanner,
    this.userBanner,
    this.userName,
    this.profileImage,
    this.friendsImages,
    this.friendsNames,
    this.friendRequest,
    this.post,
    this.newsFeedPost,
  });
}

class FriendRequest {
  List? image;
  List? name;
  FriendRequest({this.image, this.name});
}

class Post {
  List? userPosts;
  List? userPostsText;
  List? friendPost;

  Post({this.userPosts, this.userPostsText, this.friendPost});
}

class NewsFeedPost {
  String? profileImage;
  String? userName;
  String? postText;
  String? postImage;

  NewsFeedPost(
      {this.postImage, this.profileImage, this.postText, this.userName});
}
