import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widget/customText.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  List accIcons = [
    Icons.account_circle_outlined,
    // Icons.perm_device_info,
    FontAwesomeIcons.idBadge,
    Icons.shield_outlined,
    Icons.lock_clock_outlined,
    FontAwesomeIcons.bullhorn,
    FontAwesomeIcons.creditCard
  ];
  List accName = [
    'Accounts',
    'Personal details',
    'Password and secuirity',
    'Your information and permission',
    'Ad preferences',
    'payments'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close)),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.meta,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10,
              ),
              MyText(text: 'Meta'),
            ],
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height * 1.9,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: MyText(
                            text: 'Account Centre',
                            size: 20.0,
                            fWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Expanded(
                      child: MyText(
                        align: TextAlign.center,
                        text:
                            'Manage your connected experiences and account settings across Meta technologies such as Facebook,Instagram and Meta Horizon',
                        size: 16.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 165,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: ListTile(
                          leading: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 25,
                                child: CircleAvatar(
                                  radius: 22,
                                  backgroundImage: AssetImage(
                                      'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg'),
                                ),
                              ),
                              Positioned(
                                  top: 22,
                                  right: 19,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    radius: 25,
                                    child: CircleAvatar(
                                      radius: 22,
                                      backgroundImage: AssetImage(
                                          'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg'),
                                    ),
                                  ))
                            ],
                          ),
                          title: MyText(
                            text: 'Profile',
                            size: 17.0,
                          ),
                          subtitle: MyText(
                            text: 'Hayat Khan ,hayatinsta',
                            size: 17.0,
                          ),
                          trailing: Wrap(
                            children: [
                              MyText(
                                text: '2',
                                size: 17.0,
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 20.0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.grey.shade200,
                      ),
                      const Expanded(
                        child: ListTile(
                          leading: Icon(Icons.connect_without_contact_rounded),
                          title: MyText(
                            text: 'connected experiences',
                            size: 20.0,
                            fWeight: FontWeight.w400,
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 17.0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: MyText(
                    text: 'Account Settings',
                    size: 20.0,
                    fWeight: FontWeight.w500,
                  ),
                ),
                Container(
                    height: accIcons.length * 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: accIcons.length,
                      itemBuilder: (context, index) => ListTile(
                        leading: Icon(accIcons[index]),
                        title: Text(accName[index]),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
