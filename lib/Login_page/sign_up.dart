import 'package:bano_qabil_project/widget/customText.dart';
import 'package:bano_qabil_project/widget/custom_ElevatedButton.dart';
import 'package:flutter/material.dart';

import '../widget/custom_appbar.dart';
import 'create_account.dart';
import 'forget_paasword.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 600;
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        MyText(
                            text: 'Join Facebook', size: isDesktop ? 18 : 43),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: isDesktop
                          ? Row(
                              children: [
                                Container(
                                  height: 300,
                                  width:
                                      MediaQuery.of(context).size.width * .45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                          'assets/facebook/loginpage/62b03a20c7e36272df213ddc_Facebook Audience Insights-p-500.png',
                                        ),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                  child: MyText(
                                    text:
                                        "Create an account to connect with friends,family and communities of people who share your interests",
                                    fWeight: FontWeight.w500,
                                    size: 40,
                                    maxline: 3,
                                    align: TextAlign.start,
                                  ),
                                ),
                              ],
                            )
                          : Container(
                              height: 200,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/facebook/loginpage/62b03a20c7e36272df213ddc_Facebook Audience Insights-p-500.png',
                                    ),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                    ),
                    isDesktop
                        ? const SizedBox()
                        : const MyText(
                            text:
                                "Create an account to connect with friends,family and communities of people who share your interests",
                            fWeight: FontWeight.w500,
                            align: TextAlign.center,
                          ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CreateAccount(),
                            ));
                      },
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      sizeHeight: 45,
                      child: const MyText(
                        text: 'Get Started',
                        color: Colors.white,
                        fWeight: FontWeight.w500,
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
              TextButton(
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
                  )),
            ],
          )
        ],
      ),
    );
  }
}
