import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class OE extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Outreach & Education',
            style: TextStyle(
              fontFamily: 'Bitter',
              fontSize: 16.0,
            ),
          ),
        ),
        backgroundColor: Color(0xffffc50d),

      ),


      resizeToAvoidBottomInset: false,

      body: new SingleChildScrollView(

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              'Outreach & Education',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Color(0xff6b2978),
              ),
            ),

            Text(
              '\nDCHS''s Humane Education programs provide one-of-a-kind experiences that teach the public not only about the shelter but also how they can make our community a better place for both people and animals. If you are interested in helping educate community members of all ages, consider volunteering in one of the following positions.\n',
              style: TextStyle(
                fontFamily: 'Bitter',
                fontSize: 18.0,
                color: Color(0xff48148c),
              ),

            ),

            Image.asset('img/OEi.png'),

            Card(

              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Animal Visitation Volunteer - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Animal-Visitation-Volunteer-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Bring your personal pets to events, Camp Pawprint and other shelter programs to help educate people of all ages about DCHS, pet ownership and animal welfare.\n',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 16.0,
              ),
            ),

            Card(

              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Education Assistant - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Education-Assistant-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Assist the Humane Educator in leading tours of the Main Shelter, helping with Camp Pawprint activities, hosting birthday parties and helping educate the public about DCHS and animal welfare.\n',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),

    );
  }



}

