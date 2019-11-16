import 'package:flutter/material.dart';
import 'package:project/screens/outreach/volunteer/applicationProcess.dart';
import 'package:project/screens/outreach/volunteer/volunteerPositions.dart';
import 'package:project/screens/outreach/volunteer/frequentlyAskedQuestions.dart';

class VolunteerMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:
          Text(
            'Volunteer',
            style: TextStyle(
              fontFamily: 'Bitter',
              fontSize: 25.0,
            ),
        ),
      ),

        backgroundColor: Color(0xff96be04),

      ),

      resizeToAvoidBottomInset: false,

      body: new SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,


          children: <Widget>[



            Text(
              'Volunteer',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff6b2978),


              ),
              textAlign: TextAlign.center,

            ),


            Text(
              'From in-shelter support to at-home foster care, '
                  'volunteers support every facet of our work. '
                  'Together we are achieving our mission - helping people help animals! \n\n'
                 // '                                                   '
                  'We look forward to helping you find a volunteer role that matches your skills, '
                  'interests and schedule so that you can make a big difference in the lives '
                  'of animals in need.\n',
              style: TextStyle(
                fontFamily: 'Bitter',
                fontSize: 19.0,
                color: Color(0xff48148c) ,

              ),
            ),

            Image.asset('img/volunteerMainPic.png'),


        ExpansionTile(
          title: Text(
            'Volunteer Requirements',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff6b2978),
            ),
          ),
          children: <Widget>[
            Text(
              '• Most of our volunteer positions require volunteers to be at least 18 years of age. There are some positions available for youth ages 8 to 17.\n\n'
                  '• Most DCHS volunteer positions require a six-month commitment to volunteer once per week for a two-hour shift. Exceptions are noted in the position descriptions on the Volunteer Positions page.\n\n'
                  '• Volunteers must read and comprehend detailed policy and protocol information and follow all shelter rules.\n\n'
                  '• Volunteers must have an email account. It is our primary form of communication with you.\n\n'
                  '• Human interaction is a requirement of all volunteer roles. Volunteers must always communicate professionally with staff, fellow volunteers and members of the public.\n\n'
                  '• Most volunteer roles require volunteers to stand and/or walk for up to two hours; lift and carry items or animals of varying weights; reach and lift; possess vision abilities which include close vision, distance vision and depth perception; and speak to customers, employees and other volunteers.\n\n',
              style:TextStyle(
                fontFamily: 'Bitter',
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff48148c),
              ),
            ),
            ],
          trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),

        ),
//
//            Text(
//                  '• Most of our volunteer positions require volunteers to be at least 18 years of age. There are some positions available for youth ages 8 to 17.\n\n'
//                  '• Most DCHS volunteer positions require a six-month commitment to volunteer once per week for a two-hour shift. Exceptions are noted in the position descriptions on the Volunteer Positions page.\n\n'
//                  '• Volunteers must read and comprehend detailed policy and protocol information and follow all shelter rules.\n\n'
//                  '• Volunteers must have an email account. It is our primary form of communication with you.\n\n'
//                  '• Human interaction is a requirement of all volunteer roles. Volunteers must always communicate professionally with staff, fellow volunteers and members of the public.\n\n'
//                  '• Most volunteer roles require volunteers to stand and/or walk for up to two hours; lift and carry items or animals of varying weights; reach and lift; possess vision abilities which include close vision, distance vision and depth perception; and speak to customers, employees and other volunteers.\n\n',
//              style: TextStyle(
//                fontFamily: 'Bitter',
//                fontSize: 15.0,
//                color: Color(0xff48148c) ,
//
//              ),
//            ),


            FlatButton.icon(
              onPressed: () {
                debugPrint("VolunteerPositions Button Clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return VolunteerPositions();
                }));
              },
              color: Color(0xffaa295d),

              label: Text(
                'EXPLORE VOLUNTEER POSITIONS ',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'SourceSansPro',
                  color: Colors.white,
                ),
                textAlign: TextAlign.left,
              ),
              icon: Icon(Icons.arrow_forward, color: Colors.white),
            ),

            FlatButton.icon(
              onPressed: () {
                debugPrint("FAQ Button Clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FAQ();
                }));
              },
              color: Color(0xffaa295d),

              label: Text(
                'FREQUENTLY ASKED QUESTIONS  ',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'SourceSansPro',
                  color: Colors.white,

                ),
                textAlign: TextAlign.left,

              ),
              icon: Icon(Icons.arrow_forward, color: Colors.white),
            ),

            FlatButton.icon(
              onPressed: () {
                debugPrint("ApplicationProcess Button Clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ApplicationProcess();
                }));
              },
              color: Color(0xffaa295d),

              label: Text(
                    'APPLICATION PROCESS',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'SourceSansPro',
                  color: Colors.white,

                ),
                textAlign: TextAlign.left,

              ),
              icon: Icon(Icons.arrow_forward, color: Colors.white),
            ),

          ],
        ),
      ),

    );
  }
}