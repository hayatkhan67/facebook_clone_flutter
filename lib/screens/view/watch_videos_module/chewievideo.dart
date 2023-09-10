import 'dart:convert';
import 'dart:developer';

import 'package:bano_qabil_project/screens/view/watch_videos_module/tab_bar.dart';
import 'package:bano_qabil_project/widgets/customText.dart';
import 'package:bano_qabil_project/widgets/video_post.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:http/http.dart' as http;
import '../../../widgets/circle_icon.dart';
import '../../../utils/model_class/model_video_api.dart';

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
  player() {
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: false,
      autoInitialize: true,
      allowFullScreen: true,
      allowMuting: true,
      aspectRatio: 16 / 9,
      fullScreenByDefault: false,
      controlsSafeAreaMinimum: const EdgeInsets.all(10),
      maxScale: 1.0,
      errorBuilder: (context, errorMessage) => const MyText(text: 'net error'),
      looping: false,
    );
  }

  @override
  void dispose() {
    chewieController!.dispose();
    videoPlayerController.dispose();

    super.dispose();
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
                          videoPlayerController =
                              VideoPlayerController.networkUrl(
                                  Uri.parse(data[index].videoUrl!));
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
