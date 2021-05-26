import 'package:flutter/material.dart';

import 'package:messenger_simple/screens/login/components/social_icon.dart';
import 'package:messenger_simple/screens/login/login_screen.dart';
import 'background.dart';
import '../../../components/already_account_check.dart';
import '../../../components/rounded_field_input.dart';
import '../../../components/rounded_field_password.dart';
import '../../../components/rounded_button.dart';


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
              'Sign Up',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            RoundedFieldInput(
              hintText: 'Username',
              icon: Icons.person,
              onchange: (value) {},
            ),
            RoundedFieldPassword(
              onchange: (value) {},
            ),
            RoundedFieldInput(
              hintText: 'Confirm password',
              icon: Icons.lock_outline,
              onchange: (value) {},
            ),
            RoundedButton(
              title: 'Sign Up',
              press: () {},
            ),
            SizedBox(
              height: 10,
            ),
            AlreadyAccountCheck(
              login: false,
              press: () {
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              },
            ),
            SizedBox(
              height: 10,
            ),
            Text('OR',style: TextStyle(fontSize: 20),),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                SocialIcon(
                  icon: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon( icon: "assets/icons/google-plus.svg",
                  press: () {},),
                SocialIcon( icon: "assets/icons/twitter.svg",
                  press: () {},),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


