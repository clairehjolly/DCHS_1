import 'package:flutter/material.dart';

//HAVE ANIMAL LISTED HERE LATER

class Schedules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'Schedules',
            style: TextStyle(
              fontFamily: 'Bitter',
              fontSize: 25.0,
            ), //TextStyle
          ),
        ),
        backgroundColor: Color(0xff6b2978),
      ),
      body: new Center(
        child: Column(
            children: <Widget>[
              Container(
                color: Color(0xffffc50d),
                child: Text(
                  'This is the Schedules: should show a list of schedules, have edit,delete button for each schedule',
                  style: TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}