import 'package:bano_qabil_project/widget/customText.dart';
import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
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
                            fit: BoxFit.cover)),
                  ),
                ),
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: MyText(
                    text: 'Create Story',
                    align: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxline: 2,
                    size: 10,
                  ),
                )),
              ],
            ),
            Positioned(
              top: 80,
              bottom: 29,
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
