import 'package:edudock/Utils/Colors.dart';
import 'package:flutter/material.dart';

class HolidaysListItem extends StatelessWidget {
  final String holiday;

  const HolidaysListItem({Key key, this.holiday}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
        color: Colors.transparent,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                holiday,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              Text(
                "26/06/2020",
                style: TextStyle(
                    color: EduDockColors.PrimaryTextColor,
                    fontWeight: FontWeight.w100,
                    fontSize: 12),
              )
            ],
          ),
        ));
  }
}
