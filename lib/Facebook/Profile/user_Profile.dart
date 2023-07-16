import 'package:bano_qabil_project/Facebook/Profile/posts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../model class/userProfile_model_Class.dart';
import '../../widget/customText.dart';
import '../../widget/custom_Divider.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  List<Posts> post = [
    Posts(image: [
      'assets/facebook/myPost/photo_2023-07-16_08-41-47.jpg',
      'assets/facebook/myPost/photo_2023-07-16_08-41-42.jpg',
      'assets/facebook/myPost/photo_2023-07-16_08-41-47.jpg',
      'assets/facebook/myPost/photo_2023-07-16_08-41-50.jpg'
    ], text: [
      'group pic',
      'new pic',
      '2020',
      '2023'
    ])
  ];
  var currentIndex = 0;
  List name = [
    'Posts',
    'Reels',
  ];
  List test = const [
    Center(
      child: Text(
        '0',
        style: TextStyle(fontSize: 42),
      ),
    ),
    Center(
      child: Text(
        '1',
        style: TextStyle(fontSize: 42),
      ),
    )
  ];

  List detailsIcon = [
    Icons.home,
    Icons.location_on_sharp,
    FontAwesomeIcons.heart,
    Icons.more_horiz_outlined
  ];
  List detailsText = [
    'Lives in Karachi,Pakistan',
    'from Mianwali',
    'Single',
    'See Your About Info'
  ];

  List<UserDetails> profile = [
    UserDetails(
        displayFriendsImage: [
          'assets/facebook/friends/images/photo_1_2023-07-10_20-06-17.jpg',
          'assets/facebook/friends/images/photo_2023-07-15_21-12-22.jpg',
          'assets/facebook/friends/images/photo_2023-07-15_21-11-48.jpg',
          'assets/facebook/friends/images/photo_2023-07-15_21-12-19.jpg',
          'assets/facebook/friends/images/photo_6_2023-07-10_20-06-17.jpg',
          'assets/facebook/friends/images/photo_5_2023-07-10_20-06-17.jpg',
        ],
        displayFriendsName: [
          'Shan Niazi',
          'Amjad',
          'Zain Khan',
          'Wahab Niazi',
          'Khan Amir Niazi',
          'Iqbal Niazi'
        ],
        profilePic: 'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg',
        totalFriends: '6',
        userName: 'Hayat Khan',
        banner: 'assets/facebook/myPost/photo_2023-07-16_08-41-47.jpg')
  ];
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
        title: MyText(
          text: profile[0].userName,
          color: Colors.black,
          size: 18.0,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(clipBehavior: Clip.none, children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    image: DecorationImage(
                        image: AssetImage(profile[0].banner.toString()),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                bottom: -30,
                left: 8,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 57,
                    backgroundImage:
                        AssetImage(profile[0].profilePic.toString()),
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
              padding: const EdgeInsets.only(
                  top: 35, bottom: 10, left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      MyText(
                          text: profile[0].userName,
                          size: 20.0,
                          fWeight: FontWeight.w500),
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
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade200,
                              elevation: 0),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.edit,
                                size: 20,
                                color: Colors.black,
                              ),
                              MyText(
                                text: " Edit profile",
                                color: Colors.black,
                              )
                            ],
                          )),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade200,
                              elevation: 0),
                          child: const Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const MyDivider(),
                  SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: ListView.builder(
                        itemCount: name.length,
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {});
                                      currentIndex = index;
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        color: currentIndex != index
                                            ? Colors.grey.shade200
                                            : Colors.blue,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: MyText(
                                          text: name[index],
                                          color: currentIndex != index
                                              ? Colors.black
                                              : Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                  ),
                  const MyDivider(
                    indent: 14.0,
                    endIndent: 14.0,
                    thick: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyText(
                          text: 'Details',
                          size: 20.0,
                          fWeight: FontWeight.bold,
                        ),
                        ...List.generate(
                            detailsIcon.length,
                            (index) => ListTile(
                                  leading: Icon(
                                    detailsIcon[index],
                                    size: 23,
                                  ),
                                  title: MyText(
                                    text: detailsText[index],
                                    size: 18.0,
                                  ),
                                )),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(double.maxFinite, 40),
                                backgroundColor: Colors.blue.shade400,
                                elevation: 3),
                            child: const MyText(
                              text: 'Edit public details',
                              color: Colors.white,
                              fWeight: FontWeight.bold,
                            )),
                        const MyDivider(
                          thick: 3.0,
                          indent: 14.0,
                          endIndent: 14.0,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.12,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: ListTile(
                                  title: const MyText(
                                    text: "Friends",
                                    fWeight: FontWeight.bold,
                                    size: 15.0,
                                  ),
                                  subtitle: MyText(
                                      text:
                                          '${profile[0].totalFriends.toString()} friends'),
                                ),
                              ),
                              const Expanded(
                                child: ListTile(
                                  trailing: MyText(
                                    text: 'Find Friends',
                                    color: Colors.blue,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 370,
                          width: double.infinity,
                          child: GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 05,
                                    mainAxisSpacing: 10,
                                    mainAxisExtent: 160),
                            itemCount: 6,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Expanded(
                                    child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(profile[0]
                                              .displayFriendsImage![index]
                                              .toString()),
                                          fit: BoxFit.fill),
                                      color: Colors.blue,
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                )),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    child: Center(
                                        child: MyText(
                                      text: profile[0]
                                          .displayFriendsName![index]
                                          .toString(),
                                      fWeight: FontWeight.bold,
                                    )))
                              ],
                            ),
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade200,
                              fixedSize: const Size(double.maxFinite, 40),
                            ),
                            child: const MyText(
                              text: 'See all friends',
                              fWeight: FontWeight.bold,
                            )),
                        //Practice
                        // MyElevatedButton(
                        //   onPressed: () {
                        //     print('yes');
                        //   },
                        //   child: const MyText(
                        //     text: 'See all friends',
                        //     fWeight: FontWeight.bold,
                        //   ),
                        // ),
                        const MyDivider(
                          indent: 14.0,
                          endIndent: 14.0,
                          thick: 3.0,
                        ),
                        //Your Post
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: 'Your posts',
                                fWeight: FontWeight.bold,
                                size: 20.0,
                              ),
                              MyText(
                                text: "Filters",
                                color: Color.fromARGB(255, 16, 113, 192),
                                size: 18.0,
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(profile[0].profilePic.toString()),
                          ),
                          title: const MyText(text: 'What\'s on your mind?'),
                          trailing: const Icon(
                            Icons.photo,
                            color: Colors.green,
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          width: double.infinity,
                          color: Colors.grey.shade200,
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(110, 30),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.video_collection_rounded,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MyText(text: 'Reels')
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(110, 30),
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.ondemand_video_rounded,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    MyText(text: 'Live')
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(double.maxFinite, 40),
                                backgroundColor: Colors.grey.shade200,
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.manage_accounts_outlined,
                                    color: Colors.black,
                                  ),
                                  MyText(
                                    text: 'Manage Post',
                                  ),
                                ],
                              )),
                        ),
                        const MyDivider(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(120, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Colors.grey.shade200,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.photo,
                                color: Colors.black,
                              ),
                              MyText(
                                text: 'Photos',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 500 * post[0].image!.length.toDouble(),
                    width: double.infinity,
                    child: UserPost(
                      myPost: post[0],
                      userDp: profile[0].profilePic,
                      userName: profile[0].userName,
                    ),
                  )
                ]),
          ],
        ),
      ),
    );
  }
}
