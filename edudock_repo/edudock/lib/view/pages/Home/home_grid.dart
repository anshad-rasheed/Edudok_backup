import 'package:edudock/Utils/Colors.dart';
import 'package:edudock/models/HomeItem.dart';
import 'package:edudock/route/router.dart';
import 'package:edudock/view/pages/Assignments/Main/assignments_list.dart';
import 'package:edudock/view/pages/Attendance/attendance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeGrid extends StatelessWidget {
  final List<HomeItem> homeItems;
  HomeGrid({Key key, this.homeItems}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: homeItems.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
            child: HomeGridItem(homeItem: homeItems[index]),
            onTap: () => gridItemCliecked(context, index));
      },
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    );
  }

  void gridItemCliecked(BuildContext context, int index) {
    Screen screen = homeItems[index].destination.toScreen();
    Router().navigateTo(context, screen);
  }
}

class HomeGridItem extends StatelessWidget {
  final HomeItem homeItem;
  HomeGridItem({Key key, this.homeItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(10),
        color: EduDockColors.HomeItemBackgroundColor,
        child: Column(
          children: <Widget>[
            SvgPicture.asset(
              "assets/images/HomeIcons/" + homeItem.icon,
              height: 50,
              width: 50,
            ),
            Text(
              homeItem.title,
              style: (TextStyle(color: Colors.white, fontSize: 12)),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
        ));
  }
}
