import 'package:edudock/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AttendanceAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: EduDockColors.AttendanceAlertBackgroundColor,
      child: _markAttendance(context),
    );
  }

  _markAttendance(BuildContext context) => Container(
        height: 335,
        width: 239,
        decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  SvgPicture.asset(
                    "assets/images/alertIcon.svg",
                    height: 78,
                    width: 78,
                  )
                ],
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: EduDockColors.AttendanceAlertBackgroundColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12))),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Edudock School',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16),
              child: Text(
                'John Doe III A',
                style: TextStyle(color: EduDockColors.PrimaryTextColor),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    padding: EdgeInsets.only(
                        left: 30, right: 30, top: 13, bottom: 13),
                    child: Text("I'm Present"),
                    textColor: Colors.white,
                    color: EduDockColors.EdudockGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                SizedBox(
                  width: 27,
                ),
                FlatButton(
                  onPressed: () {
                    return Navigator.of(context).pop(true);
                  },
                  child: Text('Skip'),
                  textColor: Colors.white,
                )
              ],
            )
          ],
        ),
      );
}

class AttendanceSuccessAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: EduDockColors.AttendanceAlertBackgroundColor,
      child: _attendanceSuccess(context),
    );
  }

  _attendanceSuccess(BuildContext context) => Container(
        height: 246,
        width: 239,
        decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 42,
            ),
            Text(
              'Your Attendance has been',
              style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  fontWeight: FontWeight.normal),
            ),
            Text(
              'Marked successfully',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 29,
            ),
            SvgPicture.asset(
              "assets/images/success.svg",
              height: 96,
              width: 96,
            ),
          ],
        ),
      );
}
