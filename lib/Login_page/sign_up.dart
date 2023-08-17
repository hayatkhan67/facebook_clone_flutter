import 'package:bano_qabil_project/widget/customText.dart';
import 'package:bano_qabil_project/widget/custom_ElevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widget/custom_appbar.dart';
import 'create_account.dart';
import 'forget_paasword.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
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
                        MyText(text: 'Join Facebook', size: w < 600 ? 18 : 43),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                            height: w < 600
                                ? 200
                                : MediaQuery.of(context).size.height * 0.50,
                            width: double.infinity,
                            child: SvgPicture.asset(
                              'assets/svg/ddc-facebook-audience-insights-p-500.svg',
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),

                    const MyText(
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
                    // const Expanded(child: SizedBox()),
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
