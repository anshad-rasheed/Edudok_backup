import 'package:edudock/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DownloadListItem extends StatelessWidget {
  final String download;

  const DownloadListItem({Key key, this.download}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
        color: Colors.transparent,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 32,
                width: 32,
                child: SvgPicture.asset("assets/images/logo.svg"),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    download,
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
