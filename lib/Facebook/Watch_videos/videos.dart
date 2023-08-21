import 'dart:convert';
import 'dart:developer';

import 'package:bano_qabil_project/widget/circle_icon.dart';
import 'package:bano_qabil_project/widget/customText.dart';
import 'package:bano_qabil_project/widget/custom_Divider.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:video_player/video_player.dart';
import 'package:http/http.dart' as http;
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
    return data;
  }

  // int currentIndex = 0;

  late VideoPlayerController _controller;
  late Future<void> _initializeController;

  // @override
  // void initState() {
  //   _controller = await VideoPlayerController.contentUri(
  //       Uri.parse(data[0].videoUrl.toString()));
  //   _initializeController = _controller.initialize().then((value) {
  //     setState(() {
  //       // _controller.play();
  //     });
  //   });
  //   fetchData();
  //   super.initState();
  // }

  @override
  void dispose() {
    // _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final bool isDesktop = MediaQuery.of(context).size.width < 1100;

    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
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
          bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'For you',
                ),
                Tab(
                  text: 'Live',
                ),
                Tab(
                  text: 'Following',
                )
              ]),
        ),
        body: TabBarView(children: [
          post(),
          const Center(
            child: MyText(text: '2'),
          ),
          const Center(
            child: MyText(text: '3'),
          ),
        ]),
      ),
    );
  }

  Widget post() {
    return FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  _controller = VideoPlayerController.networkUrl(
                      Uri.parse(snapshot.data![index].videoUrl.toString()));
                  _initializeController = _controller.initialize();
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const MyDivider(
                          thick: 3,
                        ),
                        Container(
                            color: Colors.white,
                            // shape:desktop
                            //     ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                            //     : null,
                            // margin: desktop ? EdgeInsets.zero : const EdgeInsets.all(0),
                            child: Column(children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 27,
                                        backgroundImage: NetworkImage(
                                          snapshot.data![index].profile
                                              .toString(),
                                        ),
                                        onBackgroundImageError:
                                            (exception, stackTrace) =>
                                                const Icon(Icons.error),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              MyText(
                                                text:
                                                    snapshot.data![index].name,
                                                size: 18,
                                                fWeight: FontWeight.w500,
                                              )
                                            ],
                                          ),
                                          const Row(
                                            children: [
                                              MyText(text: 'Uploaded on 2023')
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  )),
                              Row(
                                children: [
                                  Expanded(
                                      child: MyText(
                                          text:
                                              snapshot.data![index].videoTitle))
                                ],
                              ),
                              FutureBuilder(
                                  future: _initializeController,
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.done) {
                                      return InkWell(
                                        onTap: () {
                                          if (_controller.value.isPlaying) {
                                            _controller.pause();
                                          } else {
                                            _controller.play();
                                          }
                                        },
                                        // ignore: avoid_unnecessary_containers
                                        child: Container(
                                          child: AspectRatio(
                                              aspectRatio:
                                                  _controller.value.aspectRatio,
                                              child: VideoPlayer(_controller)),
                                        ),
                                      );
                                    } else {
                                      return Container(
                                        height: 200,
                                        width: double.infinity,
                                        color: Colors.black,
                                        child: const Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      );
                                    }
                                  }),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.thumb_up,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(child: MyText(text: 'Likes 100')),
                                  MyText(text: 'comments 20\t share 10')
                                ],
                              ),
                              MyDivider(
                                thick: 2.0,
                                color: Colors.grey[200],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  button(
                                      icon: Icons.thumb_up_sharp,
                                      color: Colors.blue,
                                      name: 'Like'),
                                  button(
                                      icon: MdiIcons.commentOutline,
                                      name: 'comments'),
                                  button(
                                      icon: MdiIcons.shareOutline,
                                      name: 'share')
                                ],
                              ),
                            ]))
                      ]);
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

Widget button({IconData? icon, Color? color, String? name}) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 20,
          ),
          Icon(
            icon,
            color: color,
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
              child: MyText(
            text: name,
            overflow: TextOverflow.ellipsis,
            maxline: 1,
          ))
        ],
      ),
    ),
  );
}
