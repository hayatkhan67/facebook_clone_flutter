import 'package:bano_qabil_project/Facebook/Login_page/forget_paasword.dart';
import 'package:flutter/material.dart';

import 'create_account.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Join Facebook',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage(
                        'assets/facebook/loginpage/62b03a20c7e36272df213ddc_Facebook Audience Insights-p-500.png'),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Create an account to connect with friends,family and communities of people who share your interests',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GetStarted()));
              },
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 178,
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgetPassword()));
                  },
                  child: const Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.blue),
                  )),
            )
          ]),
        ));
  }
}
