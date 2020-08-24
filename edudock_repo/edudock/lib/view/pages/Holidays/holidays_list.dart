import 'package:edudock/Utils/Colors.dart';
import 'package:edudock/view/pages/Holidays/holidays_item.dart';
import 'package:edudock/view/widgets/edudock_appbar.dart';
import 'package:edudock/view/widgets/edudock_widgets.dart';
import 'package:flutter/material.dart';

class Holidays extends StatefulWidget {
  var holidays = [
    "New year",
    "Good friday",
    "Vishu",
    "New year",
    "Good friday",
    "Vishu",
  ];

  var years = [
    "2020",
    "2019",
    "2018",
  ];

  @override
  State<StatefulWidget> createState() => _Holidays();
}

class _Holidays extends State<Holidays> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = '2020';
    return Scaffold(
        backgroundColor: EduDockColors.PrimaryColor,
        appBar: EdudockAppBar(""),
        body: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              TitleText(
                title: "Holidays",
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                child: Container(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Holiday list of the year",
                          style: TextStyle(
                              color: EduDockColors.PrimaryTextColor,
                              fontSize: 16),
                        ),
                        Container(
                          color: EduDockColors.PrimaryTextColor,
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(Icons.keyboard_arrow_down),
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(color: EduDockColors.PrimaryColor),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>['2020', '2021', '2022']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Flexible(
                child: ListView.builder(
                    itemCount: widget.holidays.length,
                    itemBuilder: (context, index) {
                      return HolidaysListItem(
                        holiday: widget.holidays[index],
                      );
                    }),
              )
            ])));
  }
}
