// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../resources_list/user_posts.dart';
import '../../widget/post.dart';

class UserNewsFeed extends StatefulWidget {
  const UserNewsFeed({super.key});

  @override
  State<UserNewsFeed> createState() => _UserNewsFeedState();
}

class _UserNewsFeedState extends State<UserNewsFeed> {
  var liked = false;

  //feed post ma sb post ki dtails hain
  var feedPost = newsFeedPost;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: feedPost.length,
        itemBuilder: (context, index) => CustomPostContainer(
              profileImage: feedPost[index].profileImage,
              postImage: feedPost[index].postImage,
              postText: feedPost[index].postText,
              userName: feedPost[index].userName,
              textButton: false,
            ));
  }
}
