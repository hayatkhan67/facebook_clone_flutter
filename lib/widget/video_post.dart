import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:chewie/chewie.dart';
import 'customText.dart';
import 'custom_Divider.dart';

class CustomVideoContainer extends StatefulWidget {
  const CustomVideoContainer(
      {super.key,
      this.postText,
      this.profileImage,
      this.userName,
      this.circleRadius,
      this.controller});
  final String? userName;
  final String? profileImage;
  final String? postText;
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final double? circleRadius;
  @override
  State<CustomVideoContainer> createState() => _CustomVideoContainerState();
}

class _CustomVideoContainerState extends State<CustomVideoContainer> {
  @override
  Widget build(BuildContext context) {
    final bool isDesktop = MediaQuery.of(context).size.width > 1100;
    return Card(
      color: Colors.white,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
          : null,
      margin: isDesktop ? EdgeInsets.zero : const EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: widget.circleRadius ?? 27,
                  backgroundImage: NetworkImage(
                    widget.profileImage!,
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
          ),
          //post Text
          widget.postText != null
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: MyText(
                          text: widget.postText,
                          maxline: 6,
                        ),
                      )
                    ],
                  ),
                )
              : const SizedBox.shrink(),
          widget.controller != null
              ? Container(
                  width: double.infinity,
                  color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [Chewie(controller: widget.controller!)],
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

          isDesktop
              ? const MyDivider()
              : const SizedBox(
                  height: 10,
                )
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