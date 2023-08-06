import 'package:bano_qabil_project/Facebook/Chats/chats.dart';
import 'package:bano_qabil_project/Facebook/Profile/user_Profile.dart';
import 'package:bano_qabil_project/Facebook/newsfeed/user_newsfeed.dart';
import 'package:bano_qabil_project/widget/circle_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../api/api_get.dart';
import '../../widget/customText.dart';
import '../../widget/custom_appbar.dart';
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
  var  screenHeight=MediaQuery.of(context).size.height;
  var  screenWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(
      title: const MyText(text: 'facebook',color: Colors.blue,fWeight: FontWeight.bold,),
      leadingWidth: 30,
      actions: [
        const CircleIcon(icon: Icons.add),
        const CircleIcon(icon: Icons.search),
        CircleIcon(icon: MdiIcons.facebookMessenger,color: Colors.blue,onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const Chats(),));
        },),
      ],
      ),
      drawer:  Drawer(
        backgroundColor:const Color.fromARGB(255, 162, 199, 230),
      child: ListView(
        children: [
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => const ApiGet(),));
            },
            leading: const Icon(Icons.api),
            title: const MyText(text: 'Facebook News'),
          )
        ],
      ),
      ),
      // bottomNavigationBar: const MyNavigatorBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: MyText(text: 'height=${screenHeight.toInt()} , width=${screenWidth.toInt()}')),
            ListTile(
              leading: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UserProfile(),
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
                // height: MediaQuery.of(context).size.height * 0.23,
                height:160,
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
                          // width: MediaQuery.of(context).size.width * 0.25,
                          width: 100,
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
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  bottom: 10,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      'Hayat Khan',
                                      style: TextStyle(color: Colors.white),
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
            // const SizedBox(
            //     height: 5 * 500, width: double.infinity, child:

            const UserNewsFeed()
            //  ),
            // const MyText(text: 'no More feed'),
          ],
        ),
      ),
    );
  }
}
