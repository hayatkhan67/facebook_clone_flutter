import 'package:flutter/material.dart';

class LoginPageTest extends StatelessWidget {
  const LoginPageTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 1,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 14, 102, 173),
                Colors.black,
              ]),
            ))
      ],
    ));
  }
}
