import 'package:bano_qabil_project/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../widget/customText.dart';
import '../../../widget/custom_Divider.dart';
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

  final grey = Colors.grey[600];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: const CustomAppBar(
        title: MyText(
          text: 'Setting & privacy',
          fWeight: FontWeight.bold,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => const MyBottomSheet(),
                  );
                },
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.meta,
                              color: Colors.blue,
                              size: 16,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            MyText(
                              text: 'Meta',
                              size: 17,
                              fWeight: FontWeight.bold,
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 6.0),
                          child: MyText(
                            text: 'Accounts Centre',
                            fWeight: FontWeight.w600,
                            size: 20,
                          ),
                        ),
                        MyText(
                          text:
                              'Manage your connected experiences and account settings across Meta technologes.',
                          color: grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    MdiIcons.accountDetailsOutline,
                                    color: grey,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  MyText(
                                    text: 'Personal Details',
                                    color: grey,
                                  )
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      MdiIcons.shieldOutline,
                                      color: grey,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: MyText(
                                        text: 'Password and security',
                                        color: grey,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.ad_units,
                                    color: grey,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  MyText(
                                    text: 'Ad preferences',
                                    color: grey,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyText(
                            text: 'see more in Account Centre',
                            fWeight: FontWeight.bold,
                            color: Colors.blue[300],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const MyText(
                                  text: 'Privacy Checkup',
                                  fWeight: FontWeight.w600,
                                  size: 17,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                MyText(
                                  text:
                                      'A guided review of your important privacy and security settings',
                                  color: grey,
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/facebook/homepage/images.jpg',
                            height: 80,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const MyDivider(
              thick: 2,
              indent: 14,
              endIndent: 14,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(14, 12, 0, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    text: 'Preferences',
                    size: 17,
                    fWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  MyText(text: 'Customise your experence om Facebook'),
                ],
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
               itemCount: preferencesIcons.length,itemBuilder: (context, index) => 
            ListTile(
              minLeadingWidth: 20,
              leading: Icon(preferencesIcons[index]),
              title: MyText(text: preferencesName[index]),
            )
            ,)
          ],
        ),
      ),
    );
  }
}
