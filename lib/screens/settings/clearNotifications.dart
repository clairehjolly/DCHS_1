import 'package:flutter/material.dart';

class clearNotifications extends StatelessWidget {

  String clear = ' Where is this? Its in the home folder, with no apparent  path to this page?';


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'Notifications Cleared ',
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