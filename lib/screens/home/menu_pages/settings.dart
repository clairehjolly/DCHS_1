import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Scaffold(
      appBar: AppBar(
        title: Center(
          child:Text(
            'Settings',
            style: TextStyle(
              fontFamily: 'Bitter',
            ),
          ),
        ),
        backgroundColor: Color(0xff6b2978),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          FlatButton.icon(
            onPressed: () {}, //go to user profile
            color: Color(0xffffc50d),
            icon: Icon(Icons.people),
            label: Text(
              'Edit Profile',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Bitter',
              ),
            ),

          ),


          FlatButton.icon(
            onPressed: () {}, //turn grey if on
            color: Color(0xffaa295d),
            icon: Icon(Icons.notifications_active),
            label: Text(
              'Notifications',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Bitter',
              ),
            ),
          ),


          FlatButton.icon(
            onPressed: () {}, //Direct user to About This APP View
            color: Color(0xff96be04),
            icon: Icon(Icons.assistant),
            label: Text(
              'Version, Support & Privacy',
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Bitter',
              ),
            ),
          ),


        ],

      ),
    );

  }
}
