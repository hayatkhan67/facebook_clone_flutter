import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'customText.dart';
import 'custom_Divider.dart';

class CustomPostContainer extends StatefulWidget {
  const CustomPostContainer(
      {super.key,
      this.postImage,
      this.postText,
      this.profileImage,
      this.userName,
      this.textButton});
  final String? userName;
  final String? profileImage;
  final String? postText;
  final String? postImage;
  final bool? textButton;
  @override
  State<CustomPostContainer> createState() => _CustomPostContainerState();
}

class _CustomPostContainerState extends State<CustomPostContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 350,
        maxHeight: 950,
      ),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(widget.profileImage ??
                  'assets/facebook/friends/images/photo_2023-07-18_15-42-23.jpg'),
            ),
            title: Row(
              children: [
                MyText(text: widget.userName ?? 'HKN Playz YT.'),
                widget.textButton == true
                    ? TextButton(
                        onPressed: () {},
                        child: MyText(
                          text: 'Follow',
                          color: Colors.blue.shade800,
                        ))
                    : const SizedBox()
              ],
            ),
            subtitle: const MyText(text: 'Uploaded on 2023'),
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

          //post Text
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: MyText(text: widget.postText ?? 'HELLO FRIENDS'),
          ),
          //image
          Flexible(
              child: Image(
            image: AssetImage(widget.postImage ??
                'assets/facebook/friends/images/photo_2023-07-18_15-42-23.jpg'),
            fit: BoxFit.fill,
          )),
          const SizedBox(
            height: 20,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.thumb_up_off_alt_sharp,
                        color: Colors.blue,
                        size: 16.0,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      MyText(text: '100'),
                    ],
                  ),
                  Row(
                    children: [
                      MyText(text: '20'),
                      SizedBox(
                        width: 4,
                      ),
                      MyText(text: 'share'),
                      SizedBox(
                        width: 10,
                      ),
                      MyText(text: '60'),
                      SizedBox(
                        width: 4,
                      ),
                      MyText(text: 'comments'),
                      SizedBox(
                        width: 10,
                      ),
                      MyText(text: '60'),
                      SizedBox(
                        width: 4,
                      ),
                      MyText(text: 'views'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const MyDivider(
            thick: 1.0,
          ),
          const SizedBox(
            height: 35,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up_sharp,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 10),
                    MyText(text: 'Like'),
                  ],
                ),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.comment),
                    SizedBox(width: 10),
                    MyText(text: 'Comment'),
                  ],
                ),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.share),
                    SizedBox(width: 10),
                    MyText(text: 'Share'),
                  ],
                ),
              ],
            ),
          ),
          const MyDivider()
        ],
      ),
    );
  }
}
