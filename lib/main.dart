import 'package:bano_qabil_project/screens/view/Login_module/login_page.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  HttpOverrides.global = MyHttpOverrides();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Facebook',
        theme: ThemeData(
          fontFamily: 'Montserrat',
          scaffoldBackgroundColor: Colors.white,
          brightness: Brightness.light,
          appBarTheme: const AppBarTheme(
              elevation: 0,
              color: Colors.white,
              iconTheme: IconThemeData(color: Colors.black)),
        ),
        home: const LoginPage());
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
