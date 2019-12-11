import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/settings/userProfile.dart';
import 'package:project/screens/settings/notifications.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:project/services/auth.dart';

class Settings extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Settings',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 25.0,
            ),
          ),
        ),
        backgroundColor: Color(0xff6b2978),

      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Image.asset('img/dchslogo3.png'),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0,),
              child: Image.asset('img/settings.jpg'),
            ),

            FlatButton(
              onPressed: () {
                debugPrint("Edit profile button clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return UserProfile();
                }));
              }, //go to user profile
              color: Color(0xffffc50d),
              child: Text(
                'Edit Profile',
                style: TextStyle(
                  fontSize: 24.0,
                  letterSpacing: 2.0,
                  color: Colors.white,
                  fontFamily: 'SourceSansPro',
                ),
              ),

            ),

            FlatButton(
              onPressed: () {
                debugPrint("Edit profile button clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return notifications();
                }));
                }, //turn grey if on
              color: Color(0xffaa295d),
              child: Text(
                'Notifications',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontFamily: 'SourceSansPro',
                ),
              ),
            ),


            FlatButton(
              onPressed: () {launch('https://www.giveshelter.org/about-dchs/contact-us');}, //Direct user to About This APP View
              color: Color(0xff96be04),
              child: Text(
                'Contact DCHS',
                style: TextStyle(
                  fontSize: 24.0,
                  letterSpacing: 2.0,
                  color: Colors.white,
                  fontFamily: 'SourceSansPro',
                ),
              ),
            ),

            FlatButton(
              onPressed: () {
                _auth.logOut();
                Navigator.of(context).popUntil((route) => route.isFirst);
//                }));
              }, //turn grey if on
              color: Color(0xff3a2662),
              child: Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontFamily: 'SourceSansPro',
                ),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
        backgroundColor: Color(0xffaa295d),
      ),
    );

  }
}