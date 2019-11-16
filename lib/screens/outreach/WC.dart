import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class WC extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Wildlife Center',
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
              'Wildlife Center',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Color(0xff6b2978),
              ),
            ),

            Text(
              '\nDCHS''s Wildlife Center takes in over 3,800 ill, injured or orphaned wild animals every year with the goal of treating and releasing healthy animals back to their natural habitats. Volunteers help us with everything from direct animal care and answering phone calls to cage construction and maintenance. If working with wildlife interests you consider one of these positions.\n',
              style: TextStyle(
                fontFamily: 'Bitter',
                fontSize: 18.0,
                color: Color(0xff48148c),
              ),

            ),

            Image.asset('img/WCi.png'),

            Card(

              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Wildlife Assistant - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Wildlife-Assistant-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Assist with daily care of wild animals for eventual release back into the wild. Recruitment period is January 1 through March 30. Positions are limited so apply early!\n',
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
                        text: 'Wildlife Receptionist - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Wildlife-Receptionist-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Assist with phone calls and members of the public bringing in ill, injured or orphaned wild animals. Recruitment period is January 1 through July 1. Positions are limited so apply early!\n',
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

