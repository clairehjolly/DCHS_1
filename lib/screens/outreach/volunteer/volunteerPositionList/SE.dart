import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class SE extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Special Events',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
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

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:            Text(
                'Special Events',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Color(0xff6b2978),
                ),
              ),
            ),



            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child:            Text(
                  '\nVolunteer at fundraising events like Bark & Wine and Toto''s Gala or represent DCHS at a variety of independently held fundraisers that benefit the shelter.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 18.0,
                  ),

                ),
            ),


            Image.asset('img/SEi.png'),

            Card(

              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Special Event Volunteer - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Special-Event-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }



}

