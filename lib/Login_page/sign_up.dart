import 'package:bano_qabil_project/widget/customText.dart';
import 'package:bano_qabil_project/widget/custom_ElevatedButton.dart';
import 'package:flutter/material.dart';

import 'create_account.dart';
import 'forget_paasword.dart';

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
      ),
      body:  Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Row(
                children: [
                  MyText(text: 'Join Facebook',),
                ],
              ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: AspectRatio(
                aspectRatio: 16/9,
                child: Image.asset('assets/facebook/loginpage/62b03a20c7e36272df213ddc_Facebook Audience Insights-p-500.png',fit: BoxFit.cover,))),
          ),
            const MyText(text: "Create an account to connect with friends,family and communities of people who share your interests",fWeight: FontWeight.w500,),
            const SizedBox(height: 10,),
            CustomElevatedButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => const CreateAccount(),));
              },
              color: Colors.blue,
              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              sizeHeight: 45,
              child:const MyText(text: 'Get Started',color: Colors.white,fWeight: FontWeight.w500,), 
            ),
            const Expanded(child: SizedBox()),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => const ForgetPassword(),));
              }, child: const MyText(text: 'Already have an account?',color: Color.fromARGB(255, 11, 132, 230),fWeight: FontWeight.bold,)),
            ],
          )
          ],
        ),
      ),
    );
  }
}