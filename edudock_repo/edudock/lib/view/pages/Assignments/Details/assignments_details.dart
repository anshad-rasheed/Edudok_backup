import 'package:flutter/material.dart';

class AssignmentDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AssignmentDetails();
}

class _AssignmentDetails extends State<AssignmentDetails> {
  @override
  Widget build(BuildContext context) {
    var assignments = ["Physics", "Chemistry", "Biology"];

    return Scaffold(
        body: Container(
            child: ListView.builder(
      itemCount: assignments.length,
      itemBuilder: (context, index) {
        return Text(assignments[index]);
      },
    )));
  }
}
