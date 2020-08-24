import 'dart:convert';

import 'package:edudock/Utils/Colors.dart';
import 'package:edudock/models/HomeItem.dart';
import 'package:edudock/view/pages/Attendance/attendance.dart';
import 'package:edudock/view/pages/Home/home_content.dart';
import 'package:edudock/view/pages/Home/home_grid.dart';
import 'package:edudock/view/pages/Home/home_header.dart';
import 'package:edudock/view/pages/Library/library.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => __HomeState();
}

class __HomeState extends State<Home> {
  int currentIndex = 0;
  final List<Widget> viewContainer = [
    HomeContent(),
    LibraryGrid(),
    Attendance(),
    Attendance(),
    Attendance(),
  ];
  @override
  Widget build(BuildContext context) {
    void onTabTapped(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    return Scaffold(
        backgroundColor: EduDockColors.PrimaryColor,
        body: viewContainer[currentIndex],
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: EduDockColors.TabBarColor,
              primaryColor: Colors.red,
            ),
            child: SizedBox(
              height: 71,
              child: BottomNavigationBar(
                  selectedItemColor: EduDockColors.TabBarItemAccent,
                  onTap: onTabTapped, // new
                  currentIndex: currentIndex,
                  items: [
                    BottomNavigationBarItem(
                      icon: new Icon(Icons.home),
                      title: Text(
                        "Home",
                        style: TextStyle(color: EduDockColors.HeaderTextColor),
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: new Icon(Icons.library_books),
                      title: Text("Library"),
                    ),
                    BottomNavigationBarItem(
                      icon: new Icon(Icons.photo_library),
                      title: Text("Profile"),
                    ),
                    BottomNavigationBarItem(
                      icon: new Icon(Icons.photo_library),
                      title: Text("Chat"),
                    ),
                    BottomNavigationBarItem(
                      icon: new Icon(Icons.photo_library),
                      title: Text("Mail"),
                    )
                  ]),
            )));
  }
}
