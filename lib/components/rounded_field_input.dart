import 'package:flutter/material.dart';
import 'text_field_container.dart';
import '../constants.dart';
class RoundedFieldInput extends StatelessWidget {
  final String hintText;
  final IconData icon;

  const RoundedFieldInput({
    Key key,
    this.hintText,
    this.icon=Icons.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _userValue='';
    return TextFieldContainer(
      child: TextFormField(
        validator:(value){
          if(value.isEmpty)
            return 'Please enter the username';
          return null;
        } ,
        onSaved:(value){
          _userValue=value;
        } ,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
