import 'package:flutter/material.dart';
import '../constants.dart';
class RoundedButton extends StatelessWidget {
  final String title;
  final Function press;
  final Color colorTitle, colorButton;

  const RoundedButton({
    Key key,
    this.title,
    this.press,
    this.colorButton = kPrimaryColor,
    this.colorTitle = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      width: size.width * 0.8,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: Container(
            //padding: EdgeInsets.all(8),
            color: colorButton,
            child: TextButton(
              onPressed: press,
              child: Text(title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: colorTitle)),
            ),
          )),
    );
  }
}