import 'package:edudock/Utils/Colors.dart';
import 'package:edudock/view/pages/Attendance/attendance_alert.dart';
import 'package:edudock/view/pages/Attendance/edudock_calendar.dart';
import 'package:edudock/view/widgets/edudock_appbar.dart';
import 'package:flutter/material.dart';
import 'package:edudock/view/widgets/edudock_widgets.dart';

class Attendance extends StatelessWidget {
  @override
  Widget build(Object context) {
    Future.delayed(Duration.zero, () => this.showAttendanceAlert(context));
    return Scaffold(
        appBar: EdudockAppBar(""),
        backgroundColor: EduDockColors.PrimaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleText(
              title: "Attendance",
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Anshad",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      "Edudock School - III A",
                      style: TextStyle(
                        color: EduDockColors.PrimaryTextColor,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
              flex: 1,
            ),
            Flexible(
              child: EdudockCalendar(),
              flex: 6,
            ),
            SizedBox(
              height: 20,
            ),
            Flexible(
              child: Row(
                children: <Widget>[
                  Row(children: <Widget>[
                    Row(children: <Widget>[
                      Text("Present",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "2",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 29,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                    SizedBox(
                      width: 80,
                      // child: Divider(
                      //   color: Colors.white,
                      //   height: 10,
                      //   thickness: 5,
                      // )
                    ),
                    Row(children: <Widget>[
                      Text("Absent",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Text("2",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 29,
                              fontWeight: FontWeight.bold))
                    ])
                  ])
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              flex: 1,
            ),
          ],
        ));
  }

  void showAttendanceAlert(BuildContext context) {
    showDialog(
        context: context, builder: (BuildContext context) => AttendanceAlert());
  }
}
