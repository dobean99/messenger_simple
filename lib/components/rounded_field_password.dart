import 'package:flutter/material.dart';
import 'text_field_container.dart';
import '../constants.dart';
class RoundedFieldPassword extends StatelessWidget {
  final ValueChanged<String>onchange;
  const RoundedFieldPassword({
    Key key,this.onchange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        onChanged: onchange,
        obscureText: true,
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
    );
  }
}

