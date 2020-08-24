import 'package:edudock/Utils/Colors.dart';
import 'package:edudock/view/widgets/circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: HomeTopSection(),
        ),
        Flexible(
          child: HomeAvatarSection(),
        )
      ],
    );
  }
}

class HomeTopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
      height: 48,
      child: Row(
        children: <Widget>[
          Container(
            child: SvgPicture.asset("assets/images/logo.svg"),
            margin: EdgeInsets.only(left: 20, top: 10, bottom: 10),
          ),
          Container(
            child: Text(
              "Edudock",
              style: TextStyle(
                color: EduDockColors.HeaderTextColor,
                fontWeight: FontWeight.w400,
                fontSize: 23,
              ),
            ),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    ));
  }
}

class HomeAvatarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage("assets/images/home_top_background.png"),
                  fit: BoxFit.cover,
                ))),
        Align(
          alignment: Alignment.topCenter,
          child: CircularAvatar(
            name: "John Doe",
            imageUrl: "https://i.imgur.com/BoN9kdC.png",
            standard: "Edudock School -III A",
          ),
        )
      ],
    ));
  }
}
