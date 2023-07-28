import 'package:flutter/material.dart';

import '../../widget/customText.dart';

class ChatsHome extends StatefulWidget {
  const ChatsHome({super.key, this.userDetails});

  final userDetails;
  @override
  State<ChatsHome> createState() => _ChatsHomeState();
}

class _ChatsHomeState extends State<ChatsHome> {
  TextEditingController myText = TextEditingController();
  var sendButton = true;
  var likeButton = false;
  List userMessage = [
    'I am fine',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        toolbarHeight: 72,
        leadingWidth: MediaQuery.of(context).size.width * 0.70,
        leading: SizedBox(
          width: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                Expanded(
                  child: ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      //user profile image
                      backgroundImage:
                          AssetImage(widget.userDetails.userImage.toString()),
                    ),
                    //user Name
                    title: Text(widget.userDetails.userName.toString()),
                    subtitle: const Text('Active 1 hours ago'),
                  ),
                )
              ],
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(
                  Icons.call,
                  size: 30,
                  color: Colors.purple,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.video_call,
                  size: 30,
                  color: Colors.purple,
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            //user profile image
                            backgroundImage: AssetImage(
                                widget.userDetails.userImage.toString()),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.30,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: Center(
                                  //user default message
                                  child: MyText(
                                      text: widget.userDetails.message
                                          .toString())))
                        ],
                      ),
                      ...List.generate(
                          userMessage.length,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg'),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        constraints: const BoxConstraints(
                                            minHeight: 20,
                                            maxHeight: 200,
                                            minWidth: 70,
                                            maxWidth: double.infinity),
                                        // height: 20,
                                        // width: 30,
                                        // height:
                                        //     MediaQuery.of(context).size.height *
                                        //         0.05,
                                        // width:
                                        //     MediaQuery.of(context).size.width *
                                        //         0.30,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20))),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: MyText(
                                                  text: userMessage[index]),
                                            ),
                                          ],
                                        ))
                                  ],
                                ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customIcon(iconName: Icons.camera_alt),
                customIcon(iconName: Icons.photo),
                customIcon(iconName: Icons.mic),
                SizedBox(
                  height: 40,
                  width: 200,
                  child: TextField(
                    maxLines: 5,
                    maxLength: 30,
                    controller: myText,
                    onChanged: (value) {
                      setState(() {});
                      if (value.isNotEmpty) {
                        sendButton = false;
                      }
                      if (value.isEmpty) {
                        sendButton = true;
                      }
                    },
                    onSubmitted: (value) {
                      if (myText.text.isNotEmpty) {
                        setState(() {
                          userMessage.add(myText.text);
                          myText.clear();
                        });
                      }
                    },
                    autofocus: sendButton,
                    decoration: InputDecoration(
                        hintText: "Aa",
                        suffixIcon: sendButton == true
                            ? customIcon(iconName: Icons.face)
                            : IconButton(
                                onPressed: () {
                                  if (myText.text.isNotEmpty) {
                                    setState(() {
                                      userMessage.add(myText.text);
                                      myText.clear();
                                    });
                                  } else {
                                    null;
                                  }
                                },
                                icon: customIcon(iconName: Icons.send)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: customIcon(iconName: Icons.thumb_up_sharp))
              ],
            ),
          )
        ],
      ),
    );
  }

  Icon customIcon({required iconName, color, size}) {
    return Icon(
      iconName,
      color: color ?? Colors.blue,
      size: size ?? 30,
    );
  }
}
