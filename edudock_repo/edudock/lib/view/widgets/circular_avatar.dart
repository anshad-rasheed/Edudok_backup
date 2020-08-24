import 'package:edudock/Utils/Colors.dart';
import 'package:flutter/material.dart';

class CircularAvatar extends StatelessWidget {
  final String name;
  final String standard;

  final String imageUrl;

  const CircularAvatar({Key key, this.name, this.imageUrl, this.standard})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            width: 66.0,
            height: 66.0,
            margin: EdgeInsets.all(6),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(imageUrl)))),
        Text(
          name,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          standard,
          style: TextStyle(color: EduDockColors.PrimaryTextColor),
        )
      ],
    );
  }
}
