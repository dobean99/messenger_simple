import 'package:flutter/material.dart';
import 'package:messenger_simple/components/text_field_container.dart';

import 'package:messenger_simple/screens/login/components/social_icon.dart';
import 'package:messenger_simple/screens/login/login_screen.dart';
import 'background.dart';
import '../../../constants.dart';
import '../../../components/already_account_check.dart';
import '../../../components/rounded_button.dart';


class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _username,_password,_confirmPassword;
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    void _trySubmit()
    {
      final isValid=_formKey.currentState.validate();
      if(isValid){
        _formKey.currentState.save();
        print(_username);
        print(_password);
        print(_confirmPassword);
      }
    }
    return SingleChildScrollView(
      child: Background(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign Up',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextFieldContainer(
                child: TextFormField(
                  validator:(value){
                    if(value.isEmpty)
                      return 'Please enter the username';
                    return null;
                  } ,
                  onSaved:(value){
                    _username=value;
                  } ,
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                ),
              TextFieldContainer(
                child: TextFormField(
                  validator:(value){
                    if(value.isEmpty)
                      return 'Please enter the password';
                    if(value.length<7)
                      return 'Please enter longer password';
                    return null;
                  } ,
                  onSaved:(value){
                    _password=value;
                  } ,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                      suffixIcon: Icon(Icons.visibility,color: kPrimaryColor,)
                  ),
                ),
              ),
              TextFieldContainer(
                child: TextFormField(
                  validator:(value){
                    if(value!=_password)
                      return 'Please enter the same password';
                    return null;
                  } ,
                  onSaved:(value){
                    _confirmPassword=value;
                  } ,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.lock_outline,
                      color: kPrimaryColor,
                    ),
                      suffixIcon: Icon(Icons.visibility,color: kPrimaryColor,)
                  ),
                ),
              ),
              RoundedButton(
                title: 'Sign Up',
                press: _trySubmit,
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
      ),
    );
  }
}


