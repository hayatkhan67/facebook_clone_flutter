import 'package:bano_qabil_project/Facebook/Chats/chats.dart';
import 'package:bano_qabil_project/Facebook/homepage/profile.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'facebook',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        leadingWidth: MediaQuery.of(context).size.width * 0.08,
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Color.fromARGB(241, 238, 235, 235),
              child: Icon(Icons.add, weight: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 17,
              backgroundColor: Color.fromARGB(241, 238, 235, 235),
              child: Icon(Icons.search, weight: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 10),
            child: CircleAvatar(
                radius: 17,
                backgroundColor: const Color.fromARGB(241, 238, 235, 235),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Chats(),
                        ));
                  },
                  icon: const Icon(Icons.message, weight: 30),
                )
                //  Icon(Icons.message, weight: 30),
                ),
          )
        ],
      ),
      drawer: const Drawer(),
      // bottomNavigationBar: const MyNavigatorBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const UserProfile(),
                        ));
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg'),
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'What\'s on your mind?',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    )),
                const Expanded(
                  child: SizedBox(),
                ),
                const Icon(
                  Icons.photo,
                  color: Colors.green,
                )
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 209, 206, 206),
            thickness: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.23,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const Music(),
                  const SizedBox(width: 3),
                  const CreateStory(),
                  const SizedBox(width: 3),
                  // ListView.builder(
                  //   itemBuilder: (context, index) =>
                  ...List.generate(
                    10,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.22,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey)),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdR8gEA8y9_mimWHIM8P0kuU971JcofwkBET7ZEkjOir2C04WO-KnDuk3ErBzLiIaZG8k&usqp=CAU'),
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
                                  padding: EdgeInsets.symmetric(horizontal: 10),
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
        ],
      ),
    );
  }
}
