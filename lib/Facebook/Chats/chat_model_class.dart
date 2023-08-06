class ChatDetails {
  String? userName;
  String? message;
  String? userImage;

  ChatDetails({this.message, this.userImage, this.userName});
}

List<ChatDetails> chatDetails = [
  ChatDetails(
      userName: 'Khan Amir',
      message: 'How are you',
      userImage:
          'assets/facebook/friends/images/photo_6_2023-07-10_20-06-17.jpg'),
  ChatDetails(
      userName: 'Hasan',
      message: 'How are you',
      userImage:
          'assets/facebook/friends/images/photo_2023-07-18_15-37-01.jpg'),
  ChatDetails(
      userName: 'Wahab',
      message: 'How are you',
      userImage:
          'assets/facebook/friends/images/wahab_post.jpg'),
  ChatDetails(
      userName: 'Amjad',
      message: 'How are you',
      userImage:
          'assets/facebook/friends/images/photo_2023-07-15_21-12-22.jpg'),
  ChatDetails(
      userName: 'Shan Niazi',
      message: 'How are you',
      userImage:
          'assets/facebook/friends/images/photo_1_2023-07-10_20-06-17.jpg'),
  ChatDetails(
      userName: 'Zain Niazi',
      message: 'How are you',
      userImage:
          'assets/facebook/friends/images/photo_2023-07-15_21-11-48.jpg'),
];
