import 'package:bano_qabil_project/widget/customText.dart';
import 'package:bano_qabil_project/widget/custom_ElevatedButton.dart';
import 'package:flutter/material.dart';
import 'forget_paasword.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgetPassword(),
                          ));
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
