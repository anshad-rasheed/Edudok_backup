import 'package:edudock/Utils/Colors.dart';
import 'package:edudock/view/pages/Assignments/Main/assignment_list_item.dart';
import 'package:edudock/view/widgets/edudock_appbar.dart';
import 'package:edudock/view/widgets/edudock_widgets.dart';
import 'package:flutter/material.dart';

class AssignmentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var assignments = [
      "Physics",
      "Chemistry",
      "Biology",
      "English",
      "Malayalam",
      "Hindi",
      "Maths"
    ];

    return Scaffold(
        backgroundColor: EduDockColors.PrimaryColor,
        appBar: EdudockAppBar(""),
        body: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              TitleText(
                title: "Assignment",
              ),
              SizedBox(
                height: 30,
              ),
              Flexible(
                child: ListView.builder(
                    itemCount: assignments.length,
                    itemBuilder: (context, index) {
                      return AssignmentListItem(
                        assignment: assignments[index],
                      );
                    }),
              )
            ])));
  }
}
