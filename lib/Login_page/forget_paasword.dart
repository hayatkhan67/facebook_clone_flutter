import 'package:bano_qabil_project/widget/customText.dart';
import 'package:bano_qabil_project/widget/custom_ElevatedButton.dart';
import 'package:flutter/material.dart';

import '../widget/custom_appbar.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyText(
              text: 'Find your account',
              size: 24,
              fWeight: FontWeight.w500,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: MyText(
                text: 'Enter your mobile number or email address',
                size: 15,
                fWeight: FontWeight.w500,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Mobile number or email address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomElevatedButton(
              onPressed: () {},
              sizeWidth: double.maxFinite,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              sizeHeight: 45,
              child: const MyText(
                text: 'Find Account',
                fWeight: FontWeight.w500,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
