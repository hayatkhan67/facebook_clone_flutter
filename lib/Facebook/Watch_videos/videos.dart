import 'package:bano_qabil_project/Facebook/Watch_videos/tab_bar.dart';
import 'package:flutter/material.dart';

import '../../widget/customText.dart';
import '../../widget/custom_Divider.dart';
import '../../widget/custom_post.dart';
import '../../widget/fb_drawer.dart';

// ignore: must_be_immutable
class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  List<String> tabName = ['For you', 'Live', 'Gaming', 'Reels', 'Explore'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //added appbar
      appBar: AppBar(
        toolbarHeight: 60,
        leadingWidth: 20,
        title: const MyText(
          text: 'Watch',
          size: 25.0,
          fWeight: FontWeight.w500,
        ),
        centerTitle: false,
        actions: [
          //adding circle avartar for icons
          CircleAvatar(
            radius: 18.0,
            backgroundColor: Colors.grey.shade200,
            child: const Icon(
              Icons.person,
              size: 22.0,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              radius: 18.0,
              backgroundColor: Colors.grey.shade200,
              child: const Icon(
                Icons.search_rounded,
                size: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      drawer: const MyDrawer(),

      body: ListView(
        children: [
          //adding tab bar custom made by Hayat using list view builder in horizontal form
          SizedBox(
            height: 40,
            child: ListView.builder(
              itemCount: tabName.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: MyTabBar(title: tabName[index]),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const MyDivider(),
          //adding container for videos and pics i made this on constraint for perfect size of container based on pic image sized
          ListView.builder(
            itemCount: 10,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => const CustomPostContainer(),
          )
        ],
      ),
    );
  }
}
