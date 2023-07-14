import 'package:bano_qabil_project/widget/customText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'newsfeed_modelclass.dart';

class UserNewsFeed extends StatefulWidget {
  const UserNewsFeed({super.key});

  @override
  State<UserNewsFeed> createState() => _UserNewsFeedState();
}

class _UserNewsFeedState extends State<UserNewsFeed> {
  var liked = false;
  List<NewsFeed> newsfeed = [
    NewsFeed(
        image: 'assets/facebook/friends/images/photo_1_2023-07-10_20-06-17.jpg',
        text: 'New Pic'),
    NewsFeed(
        image: 'assets/facebook/friends/images/photo_2_2023-07-10_20-06-17.jpg',
        text: '2020'),
    NewsFeed(
        image: 'assets/facebook/friends/images/photo_3_2023-07-10_20-06-17.jpg',
        text: 'Hello'),
    NewsFeed(
        image: 'assets/facebook/friends/images/photo_4_2023-07-10_20-06-17.jpg',
        text: 'New Pic'),
    NewsFeed(
        image: 'assets/facebook/friends/images/photo_5_2023-07-10_20-06-17.jpg',
        text: 'New Pic'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: newsfeed.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: [
            Container(
                constraints:
                    const BoxConstraints(minHeight: 350, maxHeight: 450),
                height: 450,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg'),
                      ),
                      title: const MyText(text: 'Hayat Khan'),
                      subtitle: const MyText(text: '1 day ago'),
                      trailing: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(Icons.more_horiz),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {
                                  newsfeed.remove(newsfeed[index]);
                                  setState(() {});
                                },
                                icon: const Icon(Icons.close))
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          MyText(text: newsfeed[index].text.toString()),
                        ],
                      ),
                    ),
                    Expanded(
                        child: Image(
                      image: AssetImage(newsfeed[index].image.toString()),
                      fit: BoxFit.fill,
                    )),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade200)),
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      liked = !liked;
                                    });
                                  },
                                  icon: liked == false
                                      ? const Icon(Icons.thumb_up_alt_outlined)
                                      : const Icon(
                                          Icons.thumb_up_alt,
                                          color: Colors.blue,
                                        )),
                              const SizedBox(
                                width: 10,
                              ),
                              const MyText(text: 'Like'),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(FontAwesomeIcons.comment),
                              SizedBox(
                                width: 10,
                              ),
                              MyText(text: 'Comment'),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(FontAwesomeIcons.share),
                              SizedBox(
                                width: 10,
                              ),
                              MyText(text: 'Share')
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Divider(
              thickness: 5,
              color: Colors.grey.shade200,
            )
          ],
        ),
      ),
    ));
  }
}
