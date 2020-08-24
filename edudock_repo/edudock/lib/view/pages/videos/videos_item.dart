import 'package:edudock/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VideoListItem extends StatelessWidget {
  final String video;

  const VideoListItem({Key key, this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
        color: Colors.transparent,
        child: SizedBox(
          height: 62,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 62,
                width: 110,
                child: Image.asset("assets/images/videos_thumb.png"),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    video,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "26/06/2020",
                    style: TextStyle(
                        color: EduDockColors.PrimaryTextColor,
                        fontWeight: FontWeight.w100,
                        fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
