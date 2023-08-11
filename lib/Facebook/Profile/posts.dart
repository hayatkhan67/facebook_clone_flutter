import 'package:bano_qabil_project/widget/custom_post.dart';
import 'package:flutter/material.dart';
import '../../data/fb_data.dart';

class UserPost extends StatefulWidget {
  const UserPost({super.key});
  @override
  State<UserPost> createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
  var data = fbData;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: data[0].post![0].userPosts!.length,
      itemBuilder: (context, index) => CustomPostContainer(
          profileImage: data[0].profileImage,
          userName: data[0].userName,
          postImage: data[0].post![0].userPosts![index],
          postText: data[0].post![0].userPostsText![index]),
    );
  }
}

//old code working fine but i want to compress this using custom widget

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../../data/fb_data.dart';
// import '../../widget/customText.dart';

// class UserPost extends StatefulWidget {
//   const UserPost({super.key});
//   @override
//   State<UserPost> createState() => _UserPostState();
// }

// class _UserPostState extends State<UserPost> {
//   var userPost=fbData;
//   bool liked = false;
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         shrinkWrap: true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: userPost[0].post![0].userPosts!.length,
//         itemBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5.0),
//             child: Column(
//               children: [
//                 Container(
//                     constraints:
//                         const BoxConstraints(minHeight: 350, maxHeight: 850),
//                     width: double.infinity,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ListTile(
//                           onTap: () {},
//                           leading: CircleAvatar(
//                             backgroundImage: AssetImage(userPost[0].profileImage!),
//                           ),
//                           title: MyText(text: userPost[0].userName),
//                           subtitle: const MyText(text: '1 day ago'),
//                           trailing: const Icon(Icons.more_horiz),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 10),
//                           child: Row(
//                             children: [
//                               MyText(
//                                   text: userPost[0].post![0].userPostsText![index]),
//                             ],
//                           ),
//                         ),
//                         Flexible(
//                             child: Image(
//                           image: AssetImage(
//                               userPost[0].post![0].userPosts![index]),
//                           // fit: BoxFit.fill,
//                         )),
//                         Container(
//                           decoration: BoxDecoration(
//                               border: Border.all(color: Colors.grey.shade200)),
//                           height: MediaQuery.of(context).size.height * 0.07,
//                           width: double.infinity,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Row(
//                                 children: [
//                                   IconButton(
//                                       onPressed: () {
//                                         setState(() {
//                                           liked = !liked;
//                                           // if (liked) {
//                                           //   newsfeed[index].like =
//                                           //       Icons.thumb_up_alt;
//                                           // } else {
//                                           //   newsfeed[index].like =
//                                           //       Icons.thumb_up_alt_outlined;
//                                           // }
//                                         });
//                                       },
//                                       icon: const Icon(
//                                         // newsfeed[index].like ??
//                                         Icons.thumb_up_alt_outlined,
//                                         color: Colors.blue,
//                                       )),
//                                   const SizedBox(
//                                     width: 10,
//                                   ),
//                                   const MyText(text: 'Like'),
//                                 ],
//                               ),
//                               const Row(
//                                 children: [
//                                   Icon(FontAwesomeIcons.comment),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   MyText(text: 'Comment'),
//                                 ],
//                               ),
//                               const Row(
//                                 children: [
//                                   Icon(FontAwesomeIcons.share),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   MyText(text: 'Share')
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     )),
//                 Divider(
//                   thickness: 5,
//                   color: Colors.grey.shade200,
//                 )
//               ],
//             )));
//   }
// }
