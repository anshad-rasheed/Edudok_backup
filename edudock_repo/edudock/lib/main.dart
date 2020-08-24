import 'package:edudock/Utils/Colors.dart';
import 'package:edudock/view/pages/Login/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Edudock",
      theme: ThemeData(
          primaryColor: EduDockColors.PrimaryColor,
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.openSansTextTheme(
            Theme.of(context).textTheme,
          )),
      home: Login(),
    );
  }
}
