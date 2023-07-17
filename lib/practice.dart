import 'package:bano_qabil_project/widget/customText.dart';
import 'package:flutter/material.dart';

class Practice1 extends StatefulWidget {
  const Practice1({super.key});

  @override
  State<Practice1> createState() => _Practice1State();
}

class _Practice1State extends State<Practice1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: MyText(
            text: 'column testing'.toUpperCase(),
            fWeight: FontWeight.bold,
            color: Colors.white,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 200, width: double.infinity, color: Colors.pink),

              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 40,
                itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.person),
                  title: MyText(text: "`Hayat` Khan $index"),
                  subtitle: const MyText(text: "03102205066"),
                  trailing: const Icon(Icons.call),
                ),
              ),
              // )
            ],
          ),
        ));
  }
}
