import 'dart:convert';
import 'dart:developer';

import 'package:bano_qabil_project/Facebook/Watch_videos/tab_bar.dart';
import 'package:bano_qabil_project/widget/customText.dart';
import 'package:bano_qabil_project/widget/video_post.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:http/http.dart' as http;
import '../../widget/circle_icon.dart';
import 'modelVideo.dart';

class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  List<VideoData> data = [];

  Future<List<VideoData>> fetchData() async {
    const uri = 'https://hayat.hayatpc190.workers.dev/0:/video.json';

    final response = await http.get(Uri.parse(uri));

    log(response.statusCode.toString());

    if (response.statusCode == 200 || response.statusCode == 201) {
      log("sucess");
      final json = jsonDecode(response.body);
      for (var i in json) {
        data.add(VideoData.fromJson(i));
      }
      return data;
    }
    return throw Exception('error');
  }

  List<String> tabName = ['For you', 'Live', 'Gaming', 'Reels', 'Explore'];

  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;
  List allVideos = [];
  var myIndex = 0;
  @override
  void initState() {
    super.initState();
    videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(allVideos[myIndex]));
    player();
  }

  @override
  void dispose() {
    super.dispose();
    chewieController!.dispose();
    videoPlayerController.dispose();
  }

  player() {
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoInitialize: true,
      aspectRatio: videoPlayerController.value.aspectRatio,
      allowMuting: true,
      errorBuilder: (context, errorMessage) => const MyText(text: 'net error'),
      autoPlay: false,
      looping: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          leading: const SizedBox(),
          leadingWidth: 1,
          title: const MyText(
            text: 'Videos',
            fWeight: FontWeight.bold,
          ),
          actions: const [
            CircleIcon(
              circle: true,
              icon: Icons.person,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CircleIcon(
                circle: true,
                icon: Icons.search,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tabName.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyTabBar(
                      title: tabName[index],
                    ),
                  ),
                ),
              ),
              FutureBuilder(
                  future: fetchData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          allVideos.add(VideoPlayerController.networkUrl(
                              Uri.parse(data[index].videoUrl!)));
                          player();
                          return CustomVideoContainer(
                              profileImage: data[index].profile,
                              userName: data[index].name,
                              postText: data[index].videoTitle,
                              controller: chewieController);
                        },
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
            ],
          ),
        ));
  }
}
