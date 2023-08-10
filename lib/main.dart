import 'package:flutter/material.dart';
import 'Facebook/Chats/chats.dart';


void main() {
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
      home:  const Chats()
      // home:  const ResponsiveLayout(desktopScaffold: DesktopScaffold(),mobileScaffold: MobileScaffold(),tabletScaffold: TabletScaffold(),),
    );
  }
}

// pending tasks
// profile tab bar 
// setting bottom sheet
// chat home textfield fix pending
// chat navigation //complete 
// friends banner and post pending
// issue 1 overflow onboarding text
// 2 chat screen stack response
// 3 notification text