import 'package:bano_qabil_project/widget/custom_Divider.dart';
import 'package:flutter/material.dart';

import '../../../widget/customText.dart';

class RecenetAd extends StatefulWidget {
  const RecenetAd({super.key});

  @override
  State<RecenetAd> createState() => _RecenetAdState();
}

class _RecenetAdState extends State<RecenetAd> {
  var tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
            tooltip: 'Back',
          ),
          title: const MyText(
            text: 'Recent ad activity',
            fWeight: FontWeight.w500,
            size: 17.0,
          ),
          centerTitle: true,
          elevation: 1.0,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const Icon(
                Icons.ad_units,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 10,
              ),
              const MyText(
                text: 'Your ad activity',
                size: 16.0,
                fWeight: FontWeight.w500,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: MyText(
                  text:
                      'See ads you recently interacted with and easily follow up on the ones you care about.',
                  align: TextAlign.center,
                ),
              ),
              const MyDivider(
                thick: 9.0,
              ),
              TabBar(
                onTap: (value) {
                  setState(() {
                    tabIndex = value;
                  });
                  // print(value);
                },
                // indicatorColor: Colors.amber,
                // labelColor: Colors.red,
                tabs: [
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyText(
                        text: 'Recent',
                        size: 19.0,
                        color: tabIndex != 0 ? Colors.black : Colors.blue,
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyText(
                        text: 'Saved',
                        size: 19.0,
                        color: tabIndex != 1 ? Colors.black : Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
              // TabBarView(children: [
              //   // Column(
              //   //   crossAxisAlignment: CrossAxisAlignment.start,
              //   //   children: [MyText(text: 'You clicked on this 16 May')],
              //   // ),
              //   // Column(
              //   //   children: [],
              //   // )
              // ])
            ],
          ),
        ),
      ),
    );
  }
}
