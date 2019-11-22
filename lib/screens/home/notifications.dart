import 'package:flutter/material.dart';

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
              new Container(
                child: Text(
                  clear,
                  style: TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 30.0,
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}