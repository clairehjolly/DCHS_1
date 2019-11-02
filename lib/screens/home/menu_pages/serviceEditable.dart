import 'package:flutter/material.dart';

//HAVE ANIMAL LISTED HERE LATER

class ServiceEditable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'Services',
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
                  'This is the Services: not sure what this screen should look like yet for Iteration 1',
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