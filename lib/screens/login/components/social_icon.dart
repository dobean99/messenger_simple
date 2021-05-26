import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
class SocialIcon extends StatelessWidget {
  final String icon;
  final Function press;

  const SocialIcon({Key key, this.icon, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        child: SvgPicture.asset(
          icon,
          height: 20,
          width: 20,
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1, color: kPrimaryColor)),
      ),
    );
  }
}