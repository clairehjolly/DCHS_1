import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class SO extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Secondary Opportunities',
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
              'Secondary Opportunities',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Color(0xff6b2978),
              ),
            ),

            Text(
              '\nDCHS has a variety of infrequent opportunities for current volunteers who would like to broaden their participation.\n',
              style: TextStyle(
                fontFamily: 'Bitter',
                fontSize: 18.0,
                color: Color(0xff48148c),
              ),

            ),

            Image.asset('img/SOi.png'),

            Card(

              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Pet Food Pantry Assistant - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Pet-Food-Pantry-Assistant-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Help manage the inventory of pet food and litter that is distributed to local food pantries.\n',
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
                        text: 'Transport Assistant for Animal Medical Services - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Transport-Assistant-AMS-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Assist our Animal Medical Services Team by transporting animals to offsite veterinarians for health care.\n',
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
