import 'package:flutter/material.dart';
import 'package:messenger_simple/screens/signup/signup_screen.dart';
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
              'Login',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            RoundedFieldInput(
              hintText: 'Username',
              icon: Icons.person,
            ),
            RoundedFieldPassword(
              onchange: (value) {},
            ),
            RoundedButton(
              title: 'Login',
              press: (){},
            ),
            AlreadyAccountCheck(
              press: () {
                Navigator.of(context).pushNamed(SignupScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

