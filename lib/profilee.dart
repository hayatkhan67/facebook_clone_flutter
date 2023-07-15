import 'package:bano_qabil_project/widget/customText.dart';
import 'package:bano_qabil_project/widget/custom_Divider.dart';
import 'package:bano_qabil_project/widget/custom_ElevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.purple,
              ),
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
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text(name[index]),
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
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: ListTile(
                              title: MyText(
                                text: "Friends",
                                fWeight: FontWeight.bold,
                                size: 15.0,
                              ),
                              subtitle: MyText(text: '95 friends'),
                            ),
                          ),
                          Expanded(
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
                      height: 350,
                      width: double.infinity,
                      child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                mainAxisExtent: 150),
                        itemCount: 6,
                        itemBuilder: (context, index) => Column(
                          children: [
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                            )),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
                            )
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
                    const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                            "assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg"),
                      ),
                      title: MyText(text: 'What\'s on your mind?'),
                      trailing: Icon(
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
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
