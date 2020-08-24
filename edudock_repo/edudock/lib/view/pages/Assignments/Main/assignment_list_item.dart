import 'package:edudock/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AssignmentListItem extends StatelessWidget {
  final String assignment;

  const AssignmentListItem({Key key, this.assignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
        color: EduDockColors.AttendanceAlertBackgroundColor,
        child: SizedBox(
          height: 102,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset("assets/images/assignments/physics_icon.svg"),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    assignment,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Theory of relativity",
                    style: TextStyle(
                        color: EduDockColors.PrimaryTextColor,
                        fontWeight: FontWeight.w200,
                        fontSize: 12),
                  ),
                  Text(
                    "John Samuel",
                    style: TextStyle(
                        color: EduDockColors.PrimaryTextColor,
                        fontWeight: FontWeight.w200,
                        fontSize: 12),
                  ),
                  SizedBox(
                    height: 6,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                      "assets/images/assignments/download_icon.svg"),
                  Text(
                    "Download",
                    style: TextStyle(
                        color: EduDockColors.PrimaryTextColor, fontSize: 10),
                  )
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white12,
                ),
                onPressed: () {},
              )
            ],
          ),
        ));
  }
}

class AssignmentDetailsItem extends StatelessWidget {
  final String assignment;

  const AssignmentDetailsItem({Key key, this.assignment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
        color: EduDockColors.AttendanceAlertBackgroundColor,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("1"),
                  Column(
                    children: <Widget>[
                      Text(assignment),
                      SizedBox(
                        width: 200,
                        child: TextField(
                            controller: TextEditingController(
                              text: "+91 7736460709",
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white))),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.normal)),
                      )
                    ],
                  )
                ],
              )
            ]));
  }
}
