import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../widgets/customText.dart';
import '../../../../widgets/custom_Divider.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  List accIcons = [
    Icons.account_circle_outlined,
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
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close)),
                const Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.meta,
                        color: Colors.blue,
                        size: 15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      MyText(
                        text: 'Meta',
                        size: 17,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                  child: MyText(
                text: 'Accounts Centre',
                fWeight: FontWeight.bold,
                size: 18,
              )),
            ),
            MyText(
              text:
                  'Manage your connected experiences and account settings across Meta technologies such as Facebook,Instagram and Meta Horizon',
              fWeight: FontWeight.bold,
              maxline: 4,
              size: 18,
              align: TextAlign.center,
              color: Colors.grey[600],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg'),
                      ),
                      title: const MyText(
                        text: 'Profiles',
                        fWeight: FontWeight.w500,
                      ),
                      subtitle: MyText(
                        text: 'Hayat Khan',
                        color: Colors.grey[600],
                        size: 16,
                      ),
                      trailing: const Wrap(
                        children: [
                          MyText(text: '1'),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ],
                      ),
                    ),
                    const MyDivider(
                      thick: 2,
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.connect_without_contact_sharp,
                        size: 30,
                      ),
                      title: MyText(
                        text: 'Connected experiences',
                        fWeight: FontWeight.bold,
                        size: 18,
                      ),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: MyText(
                text: 'Account settings',
                size: 17,
                fWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.white,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: accIcons.length,
                    itemBuilder: (context, index) => Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        leading: Icon(
                          accIcons[index],
                          size: 26,
                          color: Colors.black,
                        ),
                        title: MyText(
                          text: accName[index],
                          fWeight: FontWeight.bold,
                          size: 16,
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
