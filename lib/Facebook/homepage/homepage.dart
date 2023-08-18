import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../widget/circle_icon.dart';
import '../../widget/customText.dart';
import '../../widget/fb_drawer.dart';
import '../Chats/chats.dart';
import '../Profile/user_Profile.dart';
import '../newsfeed/user_newsfeed.dart';
import 'create_story/create_story.dart';
import 'music.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenmd = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: const MyText(
            text: 'facebook',
            size: 19,
            color: Colors.blue,
            fWeight: FontWeight.bold,
          ),
          leadingWidth: 30,
          actions: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[200],
              child: Center(
                child: PopupMenuButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  position: PopupMenuPosition.under,
                  icon: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.penToSquare),
                              label: const MyText(
                                text: 'Post',
                              ))),
                      PopupMenuItem(
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(FontAwesomeIcons.book),
                              label: const MyText(
                                text: 'Story',
                              ))),
                      PopupMenuItem(
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.video_collection_rounded),
                              label: const MyText(
                                text: 'Reel',
                              ))),
                      PopupMenuItem(
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.videocam_outlined),
                              label: const MyText(
                                text: 'Live',
                              ))),
                    ];
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CircleIcon(icon: Icons.search),
            ),
            CircleIcon(
              icon: MdiIcons.facebookMessenger,
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Chats(),
                    ));
              },
            ),
            const SizedBox(
              width: 8,
            )
          ],
        ),
        drawer: const MyDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserProfile(isBack: true),
                        ));
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                        "assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg"),
                  ),
                ),
                title: const MyText(text: 'What\'s on your mind?'),
                trailing: const Icon(
                  Icons.photo,
                  color: Colors.green,
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 209, 206, 206),
                thickness: 6,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: screenmd.height * 0.3,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const Music(),
                      const SizedBox(width: 3),
                      const CreateStory(),
                      const SizedBox(width: 3),
                      ...List.generate(
                        10,
                        (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1),
                          child: Container(
                            width: screenmd.width * 0.3,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey)),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/facebook/friends/images/photo_2023-07-18_15-42-23.jpg'),
                                      fit: BoxFit.fill)),
                              child: const Stack(
                                children: [
                                  Positioned(
                                      left: 0.09,
                                      child: Padding(
                                        padding: EdgeInsets.all(6.0),
                                        child: CircleAvatar(
                                          radius: 19,
                                          backgroundColor: Colors.blue,
                                          child: CircleAvatar(
                                            radius: 16,
                                            backgroundImage: AssetImage(
                                                'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg'),
                                          ),
                                        ),
                                      )),
                                  Positioned(
                                    bottom: 8.0,
                                    left: 8.0,
                                    right: 8.0,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: MyText(
                                        text: 'Hayat Khan Niazi',
                                        align: TextAlign.center,
                                        size: 10,
                                        fWeight: FontWeight.bold,
                                        color: Colors.white,
                                        maxline: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(255, 209, 206, 206),
                thickness: 6,
              ),
              const UserNewsFeed()
            ],
          ),
        ),
      ),
    );
  }
}
