import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List friendsImages = [
    "assets/facebook/friends/images/photo_1_2023-07-10_20-06-17.jpg",
    "assets/facebook/friends/images/photo_2_2023-07-10_20-06-17.jpg",
    "assets/facebook/friends/images/photo_3_2023-07-10_20-06-17.jpg",
    "assets/facebook/friends/images/photo_4_2023-07-10_20-06-17.jpg",
    "assets/facebook/friends/images/photo_5_2023-07-10_20-06-17.jpg",
    "assets/facebook/friends/images/photo_6_2023-07-10_20-06-17.jpg",
    "assets/facebook/friends/images/photo_7_2023-07-10_20-06-17.jpg",
  ];
  List friendsName = [
    "Shan Niazi",
    "Sajjad",
    "Hayat Khan",
    "Hayat Khan",
    "Wahab",
    "Khan Amir",
    "Kamran"
  ];
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
          padding: const EdgeInsets.all(12.0),
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
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: friendsImages.length,
                    itemBuilder: (context, index) => Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage:
                                    AssetImage(friendsImages[index]),
                              ),
                              Text(friendsName[index])
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
              SizedBox(
                height: friendsImages.length * 72,
                width: double.infinity,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: friendsImages.length,
                    itemBuilder: (context, index) => ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(friendsImages[index]),
                            radius: 30,
                          ),
                          title: Text(friendsName[index]),
                          subtitle: const Text('Hy How are you'),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Container(
//   height: 200,
//   width: 200,
//   decoration: const BoxDecoration(
//       color: Colors.pink,
//       image: DecorationImage(
//           image: NetworkImage(
//               'https://drive.google.com/file/d/1GTevzmiB_l-sa_rccb4GaLY6fhGgbJw2/view?usp=drive_link'))),
// )
