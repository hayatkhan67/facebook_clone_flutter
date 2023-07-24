import 'package:flutter/material.dart';

import 'chat_model_class.dart';
import 'chats_home.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  // List friendsImages = [
  //   'assets/facebook/friends/images/photo_6_2023-07-10_20-06-17.jpg',
  //   "assets/facebook/friends/images/photo_1_2023-07-10_20-06-17.jpg",
  //   "assets/facebook/friends/images/photo_2_2023-07-10_20-06-17.jpg",
  //   'assets/facebook/friends/images/photo_2023-07-15_21-12-22.jpg',
  //   "assets/facebook/friends/images/photo_5_2023-07-10_20-06-17.jpg",
  //   'assets/facebook/friends/images/photo_2023-07-15_21-11-48.jpg',
  //   "assets/facebook/friends/images/photo_7_2023-07-10_20-06-17.jpg",
  // ];
  // List friendsName = [
  //   "Khan Amir",
  //   "Shan Niazi",
  //   "Sajjad",
  //   "Amjad",
  //   "Wahab",
  //   "Zain Khan Niazi",
  //   "Kamran"
  // ];
  // var message = 'How are you';

  //added model class
  var userFullDetials = chatDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text(
          'Chats',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          SizedBox(
            width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.settings),
                Icon(Icons.edit_square),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  constraints: const BoxConstraints.expand(height: 40),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.grey,
                  ),
                  hintText: "Search",
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    height: 2.8,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: userFullDetials.length,
                    itemBuilder: (context, index) => Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ChatsHome(
                                            userDetails:
                                                userFullDetials[index]),
                                      ));
                                },
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundImage: AssetImage(
                                      userFullDetials[index]
                                          .userImage
                                          .toString()),
                                ),
                              ),
                              Text(userFullDetials[index].userName.toString())
                            ],
                          ),
                        ),
                        const Positioned(
                          top: 50,
                          right: 2,
                          child: CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor:
                                    Color.fromARGB(255, 59, 207, 64),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: userFullDetials.length,
                  itemBuilder: (context, index) => ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatsHome(
                                      userDetails: userFullDetials[index])));
                        },
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              userFullDetials[index].userImage.toString()),
                          radius: 30,
                        ),
                        title: Text(userFullDetials[index].userName.toString()),
                        subtitle:
                            Text(userFullDetials[index].message.toString()),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
