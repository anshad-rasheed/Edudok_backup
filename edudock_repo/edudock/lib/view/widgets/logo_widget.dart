import 'package:flutter/material.dart';
import "package:edudock/Utils/Colors.dart";
import 'package:flutter_svg/flutter_svg.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(height: 74),
            SvgPicture.asset("assets/images/logo.svg"),
            SizedBox(height: 16),
            Text(
              "EDUDOCK",
              style: TextStyle(
                  color: EduDockColors.PrimaryTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 34),
            ),
            SizedBox(height: 5),
            Text(
              "edudock.in",
              style: TextStyle(
                  color: EduDockColors.PrimaryTextColor, fontSize: 14),
            ),
          ],
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
