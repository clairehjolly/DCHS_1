import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'About DCHS',
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
                  'NOT READY: This page is part of ITERATION 2',
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