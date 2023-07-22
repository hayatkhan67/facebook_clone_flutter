class HayatKhan{
  String? name;
  String? bio;
  String? profileImage;
  List? profilePosts;
  List? postText; 

HayatKhan({this.bio,this.name,this.postText,this.profilePosts,this.profileImage});
}
List<HayatKhan> hayatKhan=[
 HayatKhan(
  name: "Hayat Khan",
  bio: 'Flutter Developer',
  profileImage: 'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg',
    profilePosts: [
      'assets/facebook/friends/images/photo_2023-07-15_21-12-15.jpg',
      'assets/facebook/myPost/photo_2023-07-16_08-41-47.jpg',
      'assets/facebook/myPost/photo_2023-07-16_08-41-42.jpg',
      'assets/facebook/myPost/photo_2023-07-16_08-41-47.jpg',
      'assets/facebook/myPost/photo_2023-07-16_08-41-50.jpg'
    
  ],
   postText: [
      'group pic',
      'new pic',
      '2020',
      '2023'
    ]
 )

 ];
 