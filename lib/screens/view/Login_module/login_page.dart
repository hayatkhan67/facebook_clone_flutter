import 'package:bano_qabil_project/widgets/navigator_bar.dart';
import 'package:bano_qabil_project/screens/view/Login_module/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widgets/customText.dart';
import '../../../widgets/custom_ElevatedButton.dart';
import '../../../widgets/navigator_widget.dart';
import 'forget_paasword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNumber = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool eyeChanger = true;
  @override
  Widget build(BuildContext context) {
    final md = MediaQuery.of(context).size;
    final isDesktop = MediaQuery.of(context).size.width > 600;
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 235, 235),
        //add single child scroll view for overfollow problem
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              //add form valiadator
              child: Form(
                key: formKey,
                //add auto validate
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  children: [
                    // add padding for image center in less code
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: md.height * .10),
                      child: Image(
                        image: const AssetImage(
                            "assets/facebook/loginpage/Facebook-logo.png"),
                        height: md.height * .14,
                      ),
                    ),
                    SizedBox(
                      width: isDesktop ? 500 : double.infinity,
                      child: TextFormField(
                        controller: userNumber,
                        decoration: InputDecoration(
                            fillColor: Colors.grey.shade50,
                            filled: true,
                            // hintText: 'Mobile number or email address',
                            labelText: 'Mobile number or email address',
                            prefixIcon: const Icon(Icons.person),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    userNumber.clear();
                                  });
                                },
                                icon: const Icon(Icons.close)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                        //adding validator for empty notice
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter Mobile Number or email address';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: isDesktop ? 500 : double.infinity,
                      child: TextFormField(
                          obscureText: eyeChanger,
                          controller: userPassword,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade50,
                              filled: true,
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    eyeChanger = !eyeChanger;
                                  });
                                },
                                icon: eyeChanger == true
                                    ? const Icon(Icons.remove_red_eye)
                                    : const Icon(Icons.remove_red_eye_outlined),
                              ),
                              prefixIcon: const Icon(Icons.key),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          //adding validator for empty notice
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter Password';
                            }
                            if (value.length < 8) {
                              return 'Atleast 8 word';
                            } else {
                              return null;
                            }
                          }),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //add Custom Elevated for login button with navigation or validate
                    CustomElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          myNavigator(
                            context,
                            const MyNavigatorBar(),
                          );
                        }
                      },
                      color: const Color.fromARGB(255, 6, 126, 223),
                      sizeWidth: isDesktop ? 500 : double.maxFinite,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: const MyText(
                        text: 'Log in',
                        color: Colors.white,
                      ),
                    ),

                    //add text button for forget password page
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgetPassword(),
                            ));
                      },
                      child: const MyText(
                        text: 'Forgotton Password?',
                        fWeight: FontWeight.w500,
                      ),
                    ),

                    //add sized box wrap with expanded for filling space
                    // const Expanded(child: SizedBox()),
                    SizedBox(
                      height: md.height * 0.15,
                    ),
                    //add column for button and text
                    Column(children: [
                      CustomElevatedButton(
                        onPressed: () {
                          myNavigator(
                            context,
                            const SignUp(),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                                color: Colors.blue, width: 1.5)),
                        color: const Color.fromARGB(255, 203, 229, 251),
                        elevation: 0.0,
                        sizeWidth: isDesktop ? 500 : double.maxFinite,
                        child: const MyText(
                          text: "Create New Account",
                          color: Colors.blue,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(FontAwesomeIcons.meta),
                            SizedBox(
                              width: 10,
                            ),
                            MyText(
                              text: 'Meta',
                              size: 18.0,
                            )
                          ],
                        ),
                      )
                    ])
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
