import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

//  @override
//  void initState() {
//    super.initState();
//    _calendarController = CalendarController();
//  }
//
//  @override
//  void dispose() {
//    _calendarController.dispose();
//    super.dispose();
//  }

  @override
  Widget build(BuildContext context) {

//    dynamic _calendarController = CalendarController();
//
//    return TableCalendar(
//      calendarController: _calendarController,
//    );

    return Scaffold(
        appBar: AppBar(
        title: Text("Calendar"),
    centerTitle: true,
    backgroundColor: Color(0xff6b2978),
    ),
    );
  }
}
