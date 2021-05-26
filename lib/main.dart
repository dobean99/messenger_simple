import 'package:flutter/material.dart';
import 'screens/chat_screen.dart';
import 'screens/welcome/welcome_screen.dart';
import 'constants.dart';
import 'screens/login/login_screen.dart';
import 'screens/signup/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: 'Messenger',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor:Colors.white,
      ),
      home:WelcomeScreen(),
      routes: {
        LoginScreen.routeName: (ctx)=>LoginScreen(),
        SignupScreen.routeName:(ctx)=>SignupScreen(),
      },
    );
  }
}
