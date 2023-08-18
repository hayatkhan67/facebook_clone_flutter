import 'package:flutter/material.dart';

import '../../../widget/customText.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({super.key});

  @override
  Widget build(BuildContext context) {
    final screenmd = MediaQuery.of(context).size;
    return Container(
      width: screenmd.width < 1100
          ? MediaQuery.of(context).size.width * 0.3
          : MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.pink,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/facebook/homepage/photo_2023-07-07_14-37-37.jpg'),
                            fit: BoxFit.fitWidth)),
                  ),
                ),
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: MyText(
                    text: 'Create Story',
                    align: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxline: 2,
                    size: 12,
                  ),
                )),
              ],
            ),
            Positioned(
              top: screenmd.height * 0.15,
              bottom: screenmd.height * 0.04,
              child: Container(
                height: 70,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 3)),
                child: const Center(
                  child: Icon(Icons.add),
                ),
              ),
            )
          ]),
    );
  }
}
