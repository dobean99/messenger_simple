import 'package:flutter/material.dart';
import '../signup/components/body.dart';
class SignupScreen extends StatelessWidget {
  static const routeName = '/signup';
  const SignupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}