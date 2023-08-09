import 'package:bano_qabil_project/resources_list/user_posts.dart';
import 'package:bano_qabil_project/widget/customText.dart';
import 'package:bano_qabil_project/widget/custom_Divider.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Practice extends StatefulWidget {
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  final data = newsFeedPost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 9.0),
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(data[index].profileImage!),
                      ),
                      title: MyText(text: data[index].userName),
                      subtitle: const MyText(text: 'uploaded on 28 August '),
                      trailing: const SizedBox(
                        height: 40,
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.more_horiz),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Icon(Icons.close),
                            )
                          ],
                        ),
                      ),
                    ),
                    data[index].postText != null
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                MyText(
                                  text: data[index].postText,
                                  maxline: 6,
                                )
                              ],
                            ),
                          )
                        : const SizedBox.shrink(),
                    data[index].postImage != null
                        ? Image.asset(data[index].postImage.toString())
                        : const SizedBox.shrink(),
                    const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.thumb_up_sharp,
                                  color: Colors.blue,
                                ),
                                Expanded(child: MyText(text: 'Like\t100')),
                                MyText(text: 'comment\t100'),
                                SizedBox(
                                  width: 10,
                                ),
                                MyText(text: 'share\t100'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    MyDivider(
                      thick: 2.0,
                      color: Colors.grey[200],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        button(
                            icon: Icons.thumb_up_sharp,
                            color: Colors.blue,
                            name: 'Like'),
                        button(icon: MdiIcons.commentOutline, name: 'comments'),
                        button(icon: MdiIcons.shareOutline, name: 'share')
                      ],
                    ),
                    const MyDivider()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Expanded button({IconData? icon, Color? color, String? name}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color,
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(
                child: MyText(
              text: name,
              overflow: TextOverflow.ellipsis,
              maxline: 1,
            ))
          ],
        ),
      ),
    );
  }
}
