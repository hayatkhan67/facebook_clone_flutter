import 'package:bano_qabil_project/Login_page/forget_paasword.dart';
import 'package:bano_qabil_project/Login_page/sign_up.dart';
import 'package:flutter/material.dart';

import '../Facebook/NavigatorBar/navigator_bar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userNumber = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  bool eyeChanger = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Container(
            padding: EdgeInsets.zero,
            height: MediaQuery.of(context).size.height * 1,
            width: double.infinity,
            color: Colors.blue.withOpacity(0.2),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: double.infinity,
                      child: const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 200,
                              width: 150,
                              child: Image(
                                image: AssetImage(
                                    "assets/facebook/loginpage/Facebook-logo.png"),
                                height: 50,
                                width: 100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Number or Email';
                        } else {
                          return null;
                        }
                      },
                      controller: userNumber,
                      decoration: InputDecoration(
                          labelText: "Mobile number or email address",
                          hintText: "Mobile number or email address",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 1.5),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter Password';
                        } else {
                          return null;
                        }
                      },
                      controller: userPassword,
                      obscureText: eyeChanger,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  eyeChanger = !eyeChanger;
                                });
                              },
                              icon: eyeChanger == false
                                  ? const Icon(Icons.remove_red_eye_outlined)
                                  : const Icon(Icons.remove_red_eye)),
                          labelText: "Password",
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.black, width: 1.5),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyNavigatorBar(),
                              ));
                        }
                      },
                      // color: Colors.blue,
                      // minWidth: double.infinity,
                      // height: 60,
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                          child: Text(
                            "Log in",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ForgetPassword(),
                            ));
                      },
                      child: const Text(
                        'Forgotten Password?',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ));
                      },
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 2),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Center(
                            child: Text(
                          'Create New Account',
                          style: TextStyle(color: Colors.blue),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Image(
                      image: const AssetImage(
                          'assets/facebook/loginpage/hd-meta-facebook-white-logo-png-116403446124ydgyipr3u-removebg-preview.png'),
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: double.infinity,
                    )
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
