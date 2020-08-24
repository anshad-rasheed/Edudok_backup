import 'package:edudock/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EdudockAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  @override
  final Size preferredSize;

  EdudockAppBar(
    this.title, {
    Key key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: EduDockColors.PrimaryColor,
        title: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: SvgPicture.asset("assets/images/back.svg"),
          iconSize: 18,
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
