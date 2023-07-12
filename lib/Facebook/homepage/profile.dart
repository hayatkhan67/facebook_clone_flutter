import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 45,
        actions: const [
          SizedBox(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.edit, color: Colors.black),
                // SizedBox(
                //   width: 10,
                // ),
                Icon(Icons.search, color: Colors.black),
                // SizedBox(
                //   width: 6,
                // ),
              ],
            ),
          )
        ],
        title: const Text(
          'Hayat Khan',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(clipBehavior: Clip.none, children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey.withOpacity(0.4)),
            ),
            const Positioned(
              bottom: -30,
              left: 8,
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 57,
                  backgroundImage: AssetImage(
                      'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg'),
                ),
              ),
            ),
            const Positioned(
              bottom: -15,
              left: 100,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: 14,
                ),
              ),
            ),
          ]),
          Padding(
            padding:
                const EdgeInsets.only(top: 35, bottom: 10, left: 20, right: 20),
            child: Column(
              children: [
                const Row(
                  children: [
                    Text(
                      'Hayat Khan',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(
                              Icons.add,
                              size: 20,
                            ),
                            Text(' Add to story'),
                          ],
                        )),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(
                              Icons.edit,
                              size: 20,
                            ),
                            Text(' Edit profile'),
                          ],
                        )),
                    ElevatedButton(
                        onPressed: () {}, child: const Icon(Icons.more_horiz))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
