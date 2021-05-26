import 'package:flutter/material.dart';
class AlreadyAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyAccountCheck({
    Key key,
    this.login=true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(login?"Don't have an account! ":"Already have an account! "),
        GestureDetector(
            onTap: press,
            child: Text(
              login? 'Sign Up':'Sign In',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )),
      ],
    );
  }
}