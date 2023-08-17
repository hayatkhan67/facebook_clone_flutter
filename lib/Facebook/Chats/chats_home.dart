import 'package:flutter/material.dart';

import '../../widget/customText.dart';

class ChatHomePage extends StatefulWidget {
  const ChatHomePage({super.key, this.userDetails});

  final dynamic userDetails;
  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  TextEditingController myMessage = TextEditingController();

  ScrollController myList = ScrollController();

  bool sendButton = false;

  List message = [
    "I am fine",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        leadingWidth: 20,
        title: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(widget.userDetails.userImage),
          ),
          title: MyText(
            maxline: 1,
            text: widget.userDetails.userName,
            // size: 13,
          ),
          subtitle: const MyText(maxline: 1, text: '1 hour ago', size: 13),
        ),
        actions: const [
          Icon(
            Icons.call,
            size: 30,
            color: Colors.purple,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.video_call,
              size: 30,
              color: Colors.purple,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                controller: myList,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(widget.userDetails.userImage),
                          onBackgroundImageError: (exception, stackTrace) =>
                              const Icon(Icons.error),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MyText(text: widget.userDetails.message),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: message.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundImage: const AssetImage(
                                'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg'),
                            onBackgroundImageError: (exception, stackTrace) =>
                                const Icon(Icons.error),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            constraints: const BoxConstraints(
                                minWidth: 20, maxWidth: 150),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Text(
                                      message[index].toString(),
                                      style: const TextStyle(letterSpacing: 2),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.blue,
                  ),
                ),
                const Icon(
                  Icons.photo,
                  color: Colors.blue,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.mic,
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      controller: myMessage,
                      onChanged: (value) {
                        if (value.isEmpty) {
                          sendButton = false;
                        } else {
                          sendButton = true;
                        }
                        setState(() {});
                      },
                      onSubmitted: (v) {
                        if (myMessage.text.isNotEmpty) {
                          message.add(myMessage.text);
                          setState(() {});
                          myMessage.clear();
                        } else {
                          null;
                        }
                      },
                      minLines: 1,
                      maxLines: 3,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: 'Aaa.',
                          hintStyle: const TextStyle(fontSize: 14),
                          suffixIcon: sendButton == false
                              ? const Icon(Icons.face)
                              : IconButton(
                                  onPressed: () {
                                    if (myMessage.text.isNotEmpty) {
                                      message.add(myMessage.text);
                                      myList.animateTo(
                                          myList.position.maxScrollExtent,
                                          duration:
                                              const Duration(microseconds: 400),
                                          curve: Curves.linear);
                                      setState(() {
                                        myMessage.clear();
                                      });
                                    } else {
                                      null;
                                    }
                                  },
                                  icon: const Icon(Icons.send)),
                          contentPadding: const EdgeInsets.all(10)),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
