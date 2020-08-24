import 'package:edudock/Utils/Colors.dart';
import 'package:edudock/view/pages/downloads/downloads_item.dart';
import 'package:edudock/view/pages/videos/videos_item.dart';
import 'package:edudock/view/widgets/edudock_appbar.dart';
import 'package:flutter/material.dart';
import 'package:edudock/view/widgets/edudock_widgets.dart';

class VideosList extends StatelessWidget {
  var videos = [
    "Quantom Theory Explained",
    "Quantom Theory Explained",
    "Quantom Theory Explained",
    "Quantom Theory Explained",
    "Quantom Theory Explained",
    "Quantom Theory Explained",
    "Quantom Theory Explained"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: EduDockColors.PrimaryColor,
        appBar: EdudockAppBar(""),
        body: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              TitleText(
                title: "Videos",
              ),
              SizedBox(
                height: 30,
              ),
              Flexible(
                child: ListView.builder(
                    itemCount: videos.length,
                    itemBuilder: (context, index) {
                      return VideoListItem(
                        video: videos[index],
                      );
                    }),
              )
            ])));
  }
}
