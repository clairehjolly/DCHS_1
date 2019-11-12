import 'package:flutter/material.dart';

//HAVE ANIMAL LISTED HERE LATER

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'Notifications',
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
                  'List Calendar events, upcoming events here?',
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