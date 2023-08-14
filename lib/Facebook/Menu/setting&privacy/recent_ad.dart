import 'package:bano_qabil_project/widget/customText.dart';
import 'package:bano_qabil_project/widget/custom_Divider.dart';
import 'package:bano_qabil_project/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widget/custom_post.dart';

class RecentAd extends StatefulWidget {
  const RecentAd({super.key});

  @override
  State<RecentAd> createState() => _RecentAdState();
}

class _RecentAdState extends State<RecentAd> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          title: MyText(text: 'Recent ad activity'),
          centerTitle: true,
          elevation: 1.0,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Icon(
                  FontAwesomeIcons.tv,
                  color: Colors.blueAccent,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: MyText(
                  text: 'Your ad activity',
                  fWeight: FontWeight.bold,
                ),
              ),
              MyText(
                text:
                    'See ads you recently interacted with and easily follow up on the ones you care about',
                align: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              MyDivider(
                thick: 12,
              ),
              TabBar(
                  labelColor: Colors.black,
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      text: 'Recent',
                    ),
                    Tab(
                      text: 'Saved',
                    )
                  ]),
              Expanded(
                child: TabBarView(children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomPostContainer(
                          postImage:
                              'assets/facebook/homepage/359800012_284191147701436_8751252261540810986_n.jpg',
                          postText:
                              'BANO QABIL 2.0\nRegistration Now Open\nwww.banoqabil.pk\n#Banoqabil #Alkhidmat #Karachi #Pakistan',
                          profileImage:
                              'assets/facebook/homepage/286712598_111894744875608_5547918998843983187_n.jpg',
                          userName: 'Bano Qabil',
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        CustomPostContainer(
                          postImage:
                              'assets/facebook/homepage/359800012_284191147701436_8751252261540810986_n.jpg',
                          postText:
                              'BANO QABIL 2.0\nRegistration Now Open\nwww.banoqabil.pk\n#Banoqabil #Alkhidmat #Karachi #Pakistan',
                          profileImage:
                              'assets/facebook/homepage/286712598_111894744875608_5547918998843983187_n.jpg',
                          userName: 'Bano Qabil',
                        ),
                      ],
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
