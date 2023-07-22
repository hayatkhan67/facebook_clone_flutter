class UserPost{
  String? profileImage;
  String? userName;
  String? postText;
  String? postImage;
  

  UserPost(
      {this.postImage, this.profileImage, this.postText, this.userName});
}

List<UserPost> newsFeedPost = [
  UserPost(
    
    userName: 'Hayat Khan',

    // postText: '10 days ago',
    profileImage: 'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg',
    postImage: 'assets/facebook/myPost/photo_2023-07-16_08-41-47.jpg',
    
  
  ),
  UserPost(
    userName: 'Hasan Khan',
    // postText: '1 year ago',
    postImage: 'assets/facebook/friends/images/photo_2023-07-18_15-37-01.jpg',
    profileImage:
        'assets/facebook/friends/images/photo_2023-07-18_15-37-01.jpg',
  ),
  UserPost(
    userName: 'Khan Amir',
    // postText: '30 days ago',
    postImage: 'assets/facebook/friends/images/photo_6_2023-07-10_20-06-17.jpg',
    profileImage:
        'assets/facebook/friends/images/photo_6_2023-07-10_20-06-17.jpg',
  ),
  UserPost(
    userName: 'Amjad',
    // postText: '2 days ago',
    postImage: 'assets/facebook/friends/images/photo_2023-07-15_21-12-22.jpg',
    profileImage:
        'assets/facebook/friends/images/photo_2023-07-15_21-12-22.jpg',
  ),
  UserPost(
    userName: 'Kamran Niazi',
    // postText: '20 days ago',
    postImage: 'assets/facebook/friends/images/photo_7_2023-07-10_20-06-17.jpg',
    profileImage:
        'assets/facebook/friends/images/photo_7_2023-07-10_20-06-17.jpg',
  ),
  UserPost(
    userName: 'Wahab Khan',
    // postText: '30 days ago',
    postImage: 'assets/facebook/friends/images/photo_2023-07-15_21-12-19.jpg',
    profileImage:
        'assets/facebook/friends/images/photo_2023-07-15_21-12-19.jpg',
  ),
  UserPost(
    userName: 'Shan Niazi',
    // postText: '1 year ago',
    postImage: 'assets/facebook/friends/images/photo_1_2023-07-10_20-06-17.jpg',
    profileImage:
        'assets/facebook/friends/images/photo_1_2023-07-10_20-06-17.jpg',
  ),
];
