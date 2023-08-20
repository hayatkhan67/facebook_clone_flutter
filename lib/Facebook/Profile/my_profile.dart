import 'package:bano_qabil_project/data/fb_data.dart';
import 'package:bano_qabil_project/data/images.dart';
import 'package:bano_qabil_project/widget/custom_Divider.dart';
import 'package:bano_qabil_project/widget/custom_ElevatedButton.dart';
import 'package:flutter/material.dart';

import '../../widget/customText.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final String userName = 'Hayat Khan';

  final String profile = hayat;

  var data = fbData;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 800;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 45,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: MyText(text: userName),
        actions: const [
          Icon(Icons.edit_outlined),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: isDesktop ? h * 0.60 : 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(data[0].userBanner.toString()),
                      fit: BoxFit.cover)),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 5,
                    bottom: -40,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 57,
                        backgroundImage: AssetImage(profile),
                        onBackgroundImageError: (exception, stackTrace) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 100,
                    bottom: -22,
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.grey[200],
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.black,
                        size: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                MyText(
                  text: userName,
                  fWeight: FontWeight.bold,
                  size: 18,
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          Expanded(
                            child: Center(
                              child: MyText(
                                  text: 'Add to story',
                                  maxline: 1,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      )),
                ),
                Expanded(
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Center(
                              child: MyText(
                                  text: 'Edit profile',
                                  maxline: 1,
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.black),
                            ),
                          )
                        ],
                      )),
                ),
                Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ))
              ],
            ),
            const MyDivider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 197, 225, 238),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: MyText(
                              text: 'Post',
                              color: Colors.blue[800],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const MyText(
                          text: 'Reels',
                          fWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  const MyDivider(
                    thick: 2,
                  ),
                  const MyText(
                    text: 'Details',
                    fWeight: FontWeight.bold,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ...List.generate(
                      idDetailIcon.length,
                      (index) => Row(
                            children: [
                              Icon(
                                idDetailIcon[index],
                                size: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              MyText(
                                text: idDetailInfo[index],
                                size: 17,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          )),
                  CustomElevatedButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 129, 195, 250),
                    child: const MyText(
                        text: 'Edit public details', color: Colors.white),
                  ),
                  const MyDivider(
                    thick: 1,
                  ),
                  const ListTile(
                    title: MyText(
                      text: 'Friends',
                      fWeight: FontWeight.bold,
                      size: 17,
                    ),
                    subtitle: MyText(text: '10'),
                    trailing: MyText(
                      text: 'Find Friends',
                      color: Color.fromARGB(255, 129, 195, 250),
                    ),
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 05,
                        mainAxisSpacing: 10,
                        mainAxisExtent: isDesktop
                            ? MediaQuery.of(context).size.height * 0.45
                            : MediaQuery.of(context).size.height * 0.26),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        data[0].friendsImages![index]),
                                    fit: BoxFit.fill),
                                color: Colors.grey[200],
                                border: Border.all(color: Colors.black),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                          )),
                          Container(
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Center(
                                child: MyText(
                              text: data[0].friendsNames![index],
                              align: TextAlign.center,
                            )),
                          )
                        ],
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomElevatedButton(
                      onPressed: () {},
                      sizeHeight: 30,
                      color: Colors.grey[200],
                      child: const MyText(text: 'See all friends'),
                    ),
                  ),
                  const MyDivider(
                    thick: 1,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyText(
                        text: 'Your posts',
                        fWeight: FontWeight.bold,
                        size: 16,
                      ),
                      MyText(
                        text: 'Filters',
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(profile),
              ),
              title: const MyText(text: 'What\'s on your mind?'),
              trailing: const Icon(
                Icons.photo,
                color: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Container(
                height: 40,
                width: double.infinity,
                color: Colors.grey[50],
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.video_collection_rounded,
                              color: Colors.red,
                            ),
                            label: const MyText(text: 'Reel')),
                      ),
                    ),
                    Container(
                      height: 30,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.ondemand_video_rounded,
                              color: Colors.red,
                            ),
                            label: const MyText(
                              text: 'Live',
                              color: Colors.black,
                            )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
