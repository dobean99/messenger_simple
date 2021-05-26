import 'package:flutter/material.dart';
import 'package:messenger_simple/screens/welcome/components/body.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}