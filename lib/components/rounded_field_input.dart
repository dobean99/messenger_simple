import 'package:flutter/material.dart';
import 'text_field_container.dart';
import '../constants.dart';
class RoundedFieldInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onchange;

  const RoundedFieldInput({
    Key key,
    this.hintText,
    this.icon=Icons.person,
    this.onchange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onchange,
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
