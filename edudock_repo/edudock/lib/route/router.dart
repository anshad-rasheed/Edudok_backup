import 'package:edudock/view/pages/Assignments/Main/assignments_list.dart';
import 'package:edudock/view/pages/Attendance/attendance.dart';
import 'package:edudock/view/pages/Holidays/holidays_list.dart';
import 'package:edudock/view/pages/Home/home.dart';
import 'package:edudock/view/pages/Library/library.dart';
import 'package:edudock/view/pages/downloads/downloads.dart';
import 'package:edudock/view/pages/videos/videos.dart';
import 'package:edudock/view/pages/webview/edudock_webview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Router {
  void navigateTo(BuildContext context, Screen screen) {
    Widget destination;
    switch (screen) {
      case Screen.Home:
        destination = Home();
        break;
      case Screen.Attendance:
        destination = Attendance();
        break;
      case Screen.Videos:
        destination = VideosList();
        break;
      case Screen.Assignment:
        destination = AssignmentList();
        break;
      case Screen.My_Downloads:
        destination = Downloads();
        break;
      case Screen.Holidays:
        destination = Holidays();
        break;
      case Screen.Library:
        destination = LibraryGrid();
        break;
      default:
        destination = EdudockWebView(
          url: "https://www.edudock.in",
          title: "Edudock",
        );
    }

    navigateToWidget(context, destination);
  }

  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ));
  }
}

enum Screen {
  Home,
  Attendance,
  GK_Quiz,
  Assignment,
  Edu_Channel,
  Videos,
  My_Downloads,
  Events,
  Holidays,
  Know_Us,
  Library
}

extension EnumParser on String {
  Screen toScreen() {
    return Screen.values.firstWhere(
        (e) => e.toString().toLowerCase() == 'screen.$this'.toLowerCase(),
        orElse: () => null); //return null if not found
  }
}
