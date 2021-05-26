import 'package:flutter/material.dart';
import 'package:messenger_simple/constants.dart';
import '../../signup/signup_screen.dart';
import 'background.dart';
import '../../../components/rounded_button.dart';
import '../../login/login_screen.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'WELCOME TO MESSENGER',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            RoundedButton(
                title: "Login",
                press: () {
                  Navigator.of(context).pushNamed(LoginScreen.routeName);
                }),
            RoundedButton(
              title: "Signup",
              press: () {
                Navigator.of(context).pushNamed(SignupScreen.routeName);
              },
              colorButton: kPrimaryLightColor,
              colorTitle: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
