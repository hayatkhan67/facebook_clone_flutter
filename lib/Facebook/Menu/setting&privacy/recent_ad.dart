import 'package:bano_qabil_project/widget/custom_Divider.dart';
import 'package:flutter/material.dart';

import '../../../widget/customText.dart';

class RecenetAd extends StatelessWidget {
  const RecenetAd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Icon(
                Icons.ad_units,
                color: Colors.blue,
              ),
              SizedBox(
                height: 10,
              ),
              MyText(
                text: 'Your ad activity',
                size: 16.0,
                fWeight: FontWeight.w500,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: MyText(
                  text:
                      'See ads you recently interacted with and easily follow up on the ones you care about.',
                  align: TextAlign.center,
                ),
              ),
              MyDivider(
                thick: 9.0,
              )
            ],
          ),
        ],
      ),
    );
  }
}
