import 'package:flutter/material.dart';

import 'chat_model_class.dart';
import 'chats_home.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
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
                Icon(Icons.settings),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(Icons.edit_square),
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
                    const EdgeInsets.symmetric(vertical: 4.0,),
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
                                        builder: (context) => ChatHomePage(
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
                        onBackgroundImageError: (exception, stackTrace) => const Icon(Icons.error),

                                ),
                              ),
                              Text(userFullDetials[index].userName.toString())
                            ],
                          ),
                        ),
                        const Positioned(
                          bottom: 30,
                          right: 10,
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
                                  builder: (context) => ChatHomePage(
                                      userDetails: userFullDetials[index])));
                        },
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              userFullDetials[index].userImage.toString()),
                        onBackgroundImageError: (exception, stackTrace) => const Icon(Icons.error),
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
