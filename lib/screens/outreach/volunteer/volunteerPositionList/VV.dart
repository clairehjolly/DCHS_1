import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class VV extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Volunteer Veterinarian',
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
                'VolunteerVeterinarian',
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
                  '\nWith all of the animals that come to us in need of medical care, we need your expert help. We perform high quality and high volume spay and neuter as well as special procedures such as ophthalmology, dentistry and even provide medical care to wildlife. By donating your time and skills to our organization, we are able to help even more animals. \n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 18.0,
                  ),

                ),
            ),


            Image.asset('img/VVi.png'),

            Card(

              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Volunteer DVM Policies - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Volunteer_Vet_Policies_2011.pdf');}
                    ),
                  ],
                ),
              ),
            ),


            Card(

              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Volunteer DVM Application - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Application_Volunteer_Vet.pdf');}
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

