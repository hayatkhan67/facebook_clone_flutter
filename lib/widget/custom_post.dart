import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'customText.dart';
import 'custom_Divider.dart';

class CustomPostContainer extends StatefulWidget {
  const CustomPostContainer(
      {super.key,
      this.postImage,
      this.postText,
      this.profileImage,
      this.userName,
      this.textButton,
      this.circleRadius});
  final String? userName;
  final String? profileImage;
  final String? postText;
  final String? postImage;
  final bool? textButton;
  final double? circleRadius;
  @override
  State<CustomPostContainer> createState() => _CustomPostContainerState();
}

class _CustomPostContainerState extends State<CustomPostContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: widget.circleRadius ?? 27,
                  backgroundImage: AssetImage(
                    widget.profileImage ??
                        'assets/facebook/friends/images/photo_2023-07-18_15-42-23.jpg',
                  ),
                  onBackgroundImageError: (exception, stackTrace) =>
                      const Icon(Icons.error),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        MyText(
                          text: widget.userName ?? 'HKN Playz YT.',
                          size: 18,
                          fWeight: FontWeight.w500,
                        )
                      ],
                    ),
                    const Row(
                      children: [MyText(text: 'Uploaded on 2023')],
                    )
                  ],
                ),
                const Expanded(
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
                )
              ],
            ),
          )
          // ListTile(
          //   leading: CircleAvatar(
          //     backgroundImage: AssetImage(widget.profileImage ??
          //         'assets/facebook/friends/images/photo_2023-07-18_15-42-23.jpg'),
          //   ),
          //   title: MyText(text: widget.userName ?? 'HKN Playz YT.'),
          //   subtitle: const MyText(text: 'Uploaded on 2023'),
          //   trailing: const SizedBox(
          //     height: 40,
          //     width: 100,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: [
          //         Icon(Icons.more_horiz),
          //         Padding(
          //           padding: EdgeInsets.symmetric(horizontal: 4.0),
          //           child: Icon(Icons.close),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          ,
          //post Text
          widget.postText != null
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      MyText(
                        text: widget.postText,
                        maxline: 6,
                      )
                    ],
                  ),
                )
              : const SizedBox.shrink(),
          widget.postImage != null
              ? Container(
                  width: double.infinity,
                  color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        widget.postImage.toString(),
                        fit: BoxFit.cover,
                      ),
                    ],
                  ))
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
                  icon: Icons.thumb_up_sharp, color: Colors.blue, name: 'Like'),
              button(icon: MdiIcons.commentOutline, name: 'comments'),
              button(icon: MdiIcons.shareOutline, name: 'share')
            ],
          ),

          const MyDivider()
        ],
      ),
    );
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
            const SizedBox(
              width: 20,
            ),
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

// widget.textButton == true
//                     ? TextButton(
//                         onPressed: () {},
//                         child: MyText(
//                           text: 'Follow',
//                           color: Colors.blue.shade800,
//                         ))
//                     : const SizedBox()