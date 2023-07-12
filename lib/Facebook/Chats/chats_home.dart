import 'package:flutter/material.dart';

class ChatsHome extends StatefulWidget {
  const ChatsHome({super.key});

  @override
  State<ChatsHome> createState() => _ChatsHomeState();
}

class _ChatsHomeState extends State<ChatsHome> {
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
                const Icon(Icons.arrow_back_ios),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: ListTile(
                      onTap: () {},
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg'),
                      ),
                      title: const Text('Hayat Khan'),
                      subtitle: const Text('Active 1 hours ago'),
                    ),
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
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/facebook/friends/images/photo_7_2023-07-10_20-06-17.jpg'),
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
                                child: customText(text: "Hello How are you")))
                      ],
                    ),
                    Row(
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
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.30,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                            child: Center(child: customText(text: "I am Fine")))
                      ],
                    )
                  ],
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
                    decoration: InputDecoration(
                        hintText: "Aa",
                        suffixIcon: customIcon(iconName: Icons.face),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        filled: true,
                        fillColor: Colors.grey.shade200),
                  ),
                ),
                customIcon(iconName: Icons.thumb_up_sharp)
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

Text customText({required String text, color, fWeight, size}) {
  return Text(
    text,
    style: TextStyle(
        color: color ?? Colors.black,
        fontWeight: fWeight ?? FontWeight.normal,
        fontSize: size ?? 14),
  );
}
      // leading: Row(
      // children:+ [
      //     IconButton(
      //         onPressed: () {
      //           Navigator.pop(context);
      //         },
      //         icon: const Icon(Icons.arrow_back_ios)),
      //     // const SizedBox(width: 30),
      //     ListTile(
      //       leading: CircleAvatar(),
      //       title: Text('Hayat'),
      //       subtitle: Text('1 hour active'),
      //     ),
      //   ],
      // ),
      // actions: [
      //   Icon(Icons.call),
      //   SizedBox(width: 20),
      //   Icon(Icons.video_call)
      // ],
      // ),
      // ),
      // body: Column(
      //   children: [
      //     ListTile(
      //       leading: Container(
      //         color: Colors.pink,
      //         width: 100,
      //         height: 56,
      //         child: Row(
      //           children: [
      //             IconButton(
      //                 onPressed: () {
      //                   Navigator.pop(context);
      //                 },
      //                 icon: const Icon(Icons.arrow_back_ios)),
      //             const CircleAvatar(),
      //           ],
      //         ),
      //       ),
      //       title: const Text("Hayat Khan"),
      //       subtitle: const Text('active'),
      //     )
      //   ],
      // ),
          // ListTile(
          //   leading: Container(
          //     color: Colors.pink,
          //     width: 100,
          //     height: 56,
          //     child: Row(
          //       children: [
          //         IconButton(
          //             onPressed: () {
          //               Navigator.pop(context);
          //             },
          //             icon: const Icon(Icons.arrow_back_ios)),
          //         const CircleAvatar(),
          //       ],
          //     ),
          //   ),
          //   title: const Text("Hayat Khan"),
          //   subtitle: const Text('active'),