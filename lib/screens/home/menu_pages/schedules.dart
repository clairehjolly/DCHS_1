import 'package:flutter/material.dart';

//HAVE ANIMAL LISTED HERE LATER

class Schedules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'Schedule',
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
                child: Text(
                  'Get schedule from backend, currently not working yet',
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