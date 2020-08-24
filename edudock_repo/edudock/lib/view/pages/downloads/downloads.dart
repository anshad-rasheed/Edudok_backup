import 'package:edudock/Utils/Colors.dart';
import 'package:edudock/view/pages/downloads/downloads_item.dart';
import 'package:edudock/view/widgets/edudock_appbar.dart';
import 'package:flutter/material.dart';
import 'package:edudock/view/widgets/edudock_widgets.dart';

class Downloads extends StatelessWidget {
  var downloads = [
    "Physics",
    "Chemistry",
    "Biology",
    "English",
    "Malayalam",
    "Hindi",
    "Maths"
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
                title: "Downloads",
              ),
              SizedBox(
                height: 30,
              ),
              Flexible(
                child: ListView.builder(
                    itemCount: downloads.length,
                    itemBuilder: (context, index) {
                      return DownloadListItem(
                        download: downloads[index],
                      );
                    }),
              )
            ])));
  }
}
