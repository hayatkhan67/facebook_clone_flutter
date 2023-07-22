import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../widget/customText.dart';
import 'my_bottom_sheet.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  final List preferencesIcons = [
    FontAwesomeIcons.sliders,
    FontAwesomeIcons.thumbsUp,
    FontAwesomeIcons.bell,
    FontAwesomeIcons.thumbtack,
    FontAwesomeIcons.globe,
    Icons.video_collection_rounded,
    FontAwesomeIcons.clock,
    Icons.browser_updated_rounded,
    FontAwesomeIcons.moon
  ];
  final List preferencesName = [
    'News Feed',
    'Reaction preferences',
    'Notification',
    'Navigation bar',
    'Language and region',
    'Media',
    'Your time on Facebook',
    'Browser',
    'Dark mode'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomSheet: Container(
      //   height: 200,
      //   width: double.infinity,
      //   decoration: const BoxDecoration(
      //       color: Colors.amber,
      //       borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      // ),
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const MyText(
          text: 'Settings and Privacy',
        ),
        centerTitle: true,
        actions: const [Icon(Icons.search)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) => const MyBottomSheet());
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.40,
                width: double.infinity,
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.meta,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          MyText(
                            text: 'Meta',
                            size: 25.0,
                          )
                        ],
                      ),
                      MyText(
                        text: 'Accounts Center',
                        size: 20.0,
                        fWeight: FontWeight.bold,
                      ),
                      MyText(
                          text:
                              'Manage your connected experiences and account settings across Meta technologes.'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.idCard),
                          SizedBox(
                            width: 10,
                          ),
                          MyText(text: 'Personal detals')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.shield_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          MyText(text: 'Password and security')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.ad_units),
                          SizedBox(
                            width: 10,
                          ),
                          MyText(text: 'Ad preferences')
                        ],
                      ),
                      SizedBox(height: 20),
                      MyText(
                        text: 'See more in Accounts Centre',
                        color: Colors.blue,
                        fWeight: FontWeight.bold,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              tileColor: Colors.white,
              title: MyText(
                text: 'Privacy Checkup',
                size: 20.0,
                fWeight: FontWeight.bold,
              ),
              minVerticalPadding: 15,
              subtitle: MyText(
                  text:
                      'A guided review of your important privacy and security settings'),
            ),
            const Divider(
              thickness: 1,
              color: Colors.white,
              height: 40,
              indent: 10,
              endIndent: 10,
            ),
            const MyText(
              text: 'Preferences',
              size: 25.0,
              fWeight: FontWeight.w500,
            ),
            const MyText(
              text: 'Customise your experence om Facebook',
              size: 18.0,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: preferencesIcons.length * 58,
              width: double.infinity,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: preferencesIcons.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: () {},
                  splashColor: Colors.yellow,
                  minLeadingWidth: 20,
                  leading: FaIcon(preferencesIcons[index]),
                  title: MyText(text: preferencesName[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
