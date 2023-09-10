// ignore_for_file: file_names

import 'package:bano_qabil_project/utils/data/fb_data.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_post.dart';

class UserNewsFeed extends StatefulWidget {
  const UserNewsFeed({super.key});

  @override
  State<UserNewsFeed> createState() => _UserNewsFeedState();
}

class _UserNewsFeedState extends State<UserNewsFeed> {
  var liked = false;

  //feed post ma sb post ki dtails hain
  var feedPost = fbData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: feedPost[0].newsFeedPost!.length,
        itemBuilder: (context, index) => CustomPostContainer(
              profileImage: feedPost[0].newsFeedPost![index].profileImage,
              postImage: feedPost[0].newsFeedPost![index].postImage,
              postText: feedPost[0].newsFeedPost![index].postText,
              userName: feedPost[0].newsFeedPost![index].userName,
              textButton: false,
            ));
  }
}
