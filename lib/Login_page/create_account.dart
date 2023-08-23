import 'dart:io';

import 'package:bano_qabil_project/widget/customText.dart';
import 'package:bano_qabil_project/widget/custom_ElevatedButton.dart';
import 'package:flutter/material.dart';
import '../widget/custom_appbar.dart';
import '../widget/navigator_widget.dart';
import 'forget_paasword.dart';
import 'package:image_picker/image_picker.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  File? image;

  final picker = ImagePicker();

  Future imagePic() async {
    final picFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (picFile != null) {
        image = File(picFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MyText(
                      text: 'What\'s your name?',
                      size: 20.0,
                      fWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const MyText(
                      text: 'Enter the name you use in real life.',
                      size: 13.0,
                      fWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 15),
                        child: InkWell(
                          onTap: imagePic,
                          child: image == null
                              ? CircleAvatar(
                                  radius: 54,
                                  backgroundColor: Colors.grey[300],
                                  child: const Center(
                                    child: Icon(Icons.camera_alt),
                                  ),
                                )
                              : CircleAvatar(
                                  radius: 54,
                                  backgroundImage: FileImage(image!),
                                  backgroundColor: Colors.grey[300],
                                ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                labelText: 'Fisrt name'),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                labelText: 'Surname'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomElevatedButton(
                      onPressed: () {},
                      sizeWidth: double.maxFinite,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: const MyText(
                        text: 'Next',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      myNavigator(
                        context,
                        const ForgetPassword(),
                      );
                    },
                    child: const MyText(
                      text: 'Already have an account?',
                      color: Color.fromARGB(255, 11, 132, 230),
                      fWeight: FontWeight.bold,
                      align: TextAlign.center,
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
