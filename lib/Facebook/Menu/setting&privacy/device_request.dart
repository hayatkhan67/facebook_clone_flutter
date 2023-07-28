import 'package:flutter/material.dart';

import '../../../widget/customText.dart';
import '../../../widget/custom_ElevatedButton.dart';

class DeviceRequest extends StatelessWidget {
  const DeviceRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          tooltip: 'Back',
        ),
        title: const MyText(
          text: 'Device login requests',
          fWeight: FontWeight.w500,
          size: 17.0,
        ),
        centerTitle: true,
        elevation: 1.0,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.dark_mode))],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyText(
              text: 'Login requests',
              size: 20.0,
              fWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 10,
            ),
            const MyText(
              text:
                  'You can see or approve login requests from apps on TVs or devices here.Only continue if you are trying to login in with Facebook',
              fWeight: FontWeight.w500,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: MyText(
                text: 'Enter Code',
                fWeight: FontWeight.w500,
                size: 16.0,
              ),
            ),
            const TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child:
                  MyText(text: 'Only use a code from a source that you trust'),
            ),
            CustomElevatedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: const MyText(text: 'Approve'),
            )
          ],
        ),
      ),
    );
  }
}
