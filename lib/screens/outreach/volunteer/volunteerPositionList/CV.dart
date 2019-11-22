import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class CV extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Community Volunteering',
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
              'Community Volunteering',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Color(0xff6b2978),
              ),
            ),

            Text(
              '\nVolunteer as an individual or with a group at a community event and you can earn money to support DCHS. The following events will pay DCHS for each hour you volunteer, if you select us as your charity choice.\n',
              style: TextStyle(
                fontFamily: 'Bitter',
                fontSize: 18.0,
                color: Color(0xff48148c),
              ),

            ),

            Image.asset('img/CVi.png'),


            Text(
              'Volunteer at Madison Marathons\n',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff6b2978),
              ),
            ),

            Text(
              'Volunteer help is needed in May for Run Mad Town and in November for Madison Marathon. DCHS will receive 8.00 for each hour you volunteer at either Run Mad Town or Madison Marathon, which take place on Madison’s Capitol Square. Each year these events depend on volunteers from supporting organizations like DCHS .\n\nAnyone can do this and it’s a fun way to help DCHS raise money. You do not need to be a DCHS volunteer. You can even have family members, friends or co-workers join you! Each position has its own minimum age. Every family member or group member must sign up separately.\n\nSign up is easy, and it’s ‘first come first serve’, so don’t delay. There are quite a few charities that will compete for the open shifts, so they will fill quickly.\n',
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
                        text: 'Learn more about how to sign up',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/images/documents/How-to-Sign-Up-Run-MadTown-2019.pdf');}
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
