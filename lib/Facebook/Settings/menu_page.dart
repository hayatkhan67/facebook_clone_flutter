import 'package:bano_qabil_project/Facebook/Settings/settings.dart';
import 'package:bano_qabil_project/Facebook/Profile/profile.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

var currentIndex = 0;

class _MenuState extends State<Menu> {
  List shortcutIcons = const [
    Icon(
      Icons.video_library_outlined,
      color: Colors.blue,
    ),
    Icon(
      Icons.groups_2,
      color: Colors.blue,
    ),
    Icon(
      Icons.save,
      color: Colors.blue,
    ),
    Icon(
      Icons.flag,
      color: Colors.orange,
    ),
    Icon(
      Icons.video_collection_sharp,
      color: Colors.red,
    ),
    Icon(
      Icons.newspaper,
      color: Color.fromARGB(255, 136, 177, 211),
    ),
    // Icon(Icons.group,color: Colors.blue,),
  ];
  List shortcutText = const [
    'Videos on watch',
    'Groups',
    'Saved',
    'Pages',
    'Reels',
    'Feeds'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30)),
        centerTitle: false,
        leadingWidth: 25,
        elevation: 0,
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Settings(),
                            ));
                      },
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.black,
                      )),
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                // MaterialButton(
                //   onPressed: () {},
                //   color: Colors.grey.shade200,
                //   shape: const CircleBorder(),
                //  padding: EdgeInsets.zero,
                //   child: const Icon(Icons.settings),
                //   ),
                // MaterialButton(
                //   onPressed: () {},
                //   color: Colors.grey.shade200,
                //   shape: const CircleBorder(),
                //   child: const Icon(Icons.search),
                // )
              ],
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserProfile(),
                    ));
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg'),
              ),
              title: const Text('Hayat Khan'),
              subtitle: const Text('see your profile'),
            ),
            const Divider(
              thickness: 0.8,
              height: 1,
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.all(13.0),
              child: Row(
                children: [
                  Text(
                    'All shortcuts',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.36,
              width: double.infinity,
              child: GridView.builder(
                itemCount: shortcutIcons.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                    mainAxisExtent: 90),
                itemBuilder: (context, index) => Container(
                  // height: 20,
                  // width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        shortcutIcons[index],
                        // Icon(
                        //   Icons.videocam_outlined,
                        //   color: Colors.blue,
                        // ),
                        Text(shortcutText[index])
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.pink),
              child: DropdownButton(
                borderRadius: BorderRadius.circular(20),
                dropdownColor: Colors.grey.shade200,
                isExpanded: true,
                value: 'Select 1',
                items: [
                  const DropdownMenuItem(
                      value: 'Select 1',
                      // child: Container(
                      //   height: 100,
                      //   width: double.infinity,
                      //   color: Colors.grey.shade200,
                      // )
                      child: Text(
                        'Select 1',
                        style: TextStyle(color: Colors.black),
                      )),
                  DropdownMenuItem(
                      value: 'Select 2',
                      // child: Container(
                      //   height: 100,
                      //   width: double.infinity,
                      //   color: Colors.grey.shade200,
                      // )),

                      child: MaterialButton(
                          onPressed: () {},
                          color: Colors.amber,
                          child: const Text(
                            'Select',
                            style: TextStyle(color: Colors.black),
                          ))),
                  DropdownMenuItem(
                      value: 'Select 3',
                      // child: Container(
                      //   height: 100,
                      //   width: double.infinity,
                      //   color: Colors.grey.shade200,
                      // )),
                      child: MaterialButton(
                          onPressed: () {},
                          color: Colors.amber,
                          child: const Text(
                            'Select',
                            style: TextStyle(color: Colors.black),
                          ))),
                ],
                onChanged: (value) {},
              ),
            )

            // DropdownButton(
            //   borderRadius: BorderRadius.circular(20),
            //   dropdownColor: Colors.grey.shade200,
            //   isExpanded: true,
            //   value: 'Select 1',

            //   items: [
            //     DropdownMenuItem(
            //         value: 'Select 1',
            //         // child: Container(
            //         //   height: 100,
            //         //   width: double.infinity,
            //         //   color: Colors.grey.shade200,
            //         // )
            //         child: MaterialButton(
            //             onPressed: () {},
            //             color: Colors.amber,
            //             child: Text(
            //               'Select',
            //               style: TextStyle(color: Colors.black),
            //             ))),
            //     DropdownMenuItem(
            //         value: 'Select 2',
            //         // child: Container(
            //         //   height: 100,
            //         //   width: double.infinity,
            //         //   color: Colors.grey.shade200,
            //         // )),

            //         child: MaterialButton(
            //             onPressed: () {},
            //             color: Colors.amber,
            //             child: Text(
            //               'Select',
            //               style: TextStyle(color: Colors.black),
            //             ))),
            //     DropdownMenuItem(
            //         value: 'Select 3',
            //         // child: Container(
            //         //   height: 100,
            //         //   width: double.infinity,
            //         //   color: Colors.grey.shade200,
            //         // )),
            //         child: MaterialButton(
            //             onPressed: () {},
            //             color: Colors.amber,
            //             child: Text(
            //               'Select',
            //               style: TextStyle(color: Colors.black),
            //             ))),
            //   ],
            //   onChanged: (value) {},
            // )
          ],
        ),
      ),
    );
  }
}
