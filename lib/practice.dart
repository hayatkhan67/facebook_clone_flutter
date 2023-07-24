import 'package:bano_qabil_project/widget/customText.dart';
import 'package:flutter/material.dart';

class Practice extends StatelessWidget {
  const Practice({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Handle the back button press here (e.g., show alert or confirm logout)
        // For simplicity, we'll just print a message.
        print('Back button pressed on the HomePage');
        return true; // Return true to allow navigation back, false to prevent it.
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: MyText(text: 'press'),
          ),
        ),
      ),
    );
  }
}
