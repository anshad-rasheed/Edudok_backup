import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class EdudockCalendar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EdudockCalendarState();
}

class _EdudockCalendarState extends State<EdudockCalendar> {
  DateTime _currentDate;
  @override
  Widget build(Object context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      child: CalendarCarousel<Event>(
        onDayPressed: (DateTime date, List<Event> events) {
          this.setState(
            () {
              _currentDate = date;
            },
          );
        },
        weekendTextStyle: TextStyle(color: Colors.red, fontSize: 14),
        daysTextStyle: TextStyle(color: Colors.white, fontSize: 14),
        headerTextStyle: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.w300),
        weekdayTextStyle: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
