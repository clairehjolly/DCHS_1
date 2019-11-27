import 'package:flutter/material.dart';
import 'package:project/screens/settings/userProfile.dart';
import 'package:project/screens/settings/notifications.dart';

class Settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Settings',
            style: TextStyle(
              fontFamily: 'Bitter',
              fontSize: 25.0,
            ),
          ),
        ),
        backgroundColor: Color(0xff6b2978),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Image.asset('img/dchslogo2.jpg'),


            FlatButton.icon(
              onPressed: () {
                debugPrint("Edit profile button clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return UserProfile();
                }));
              }, //go to user profile
              color: Color(0xffffc50d),
              icon: Icon(Icons.people),
              label: Text(
                'Edit Profile',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'SourceSansPro',
                ),
              ),

            ),

            FlatButton.icon(
              onPressed: () {
                debugPrint("Edit profile button clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return notifications();
                }));
                }, //turn grey if on
              color: Color(0xffaa295d),
              icon: Icon(Icons.notifications_active),
              label: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 24.0,
                  fontFamily: 'SourceSansPro',
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
                  fontSize: 24.0,
                  fontFamily: 'SourceSansPro',
                ),
              ),
            ),


          ],
        ),
      ),
    );

  }
}