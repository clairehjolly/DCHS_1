import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class BPAT extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Bringing People and Animals Together',
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
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child:            Text(
                'Bringing People and Animals Together',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Color(0xff6b2978),
                ),
              ),
            ),


            Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child:        Text(
                  '\nThere''s a certain magic when people connect with animals in need. '
                      'If you like working with people but also want to get involved '
                      'with the animals in a hands-on way, consider one of the following ways '
                      'you can help people and animals come together.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 18.0,
                  ),

                ),

            ),

            Image.asset('img/BPATi.png'),

            Card(

              child: new RichText(
            text: new TextSpan(
              children: [
                new TextSpan(
                  text: 'Adoption Assistant - [pdf]',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    fontSize: 23.0,
                    color: Color(0xff6b2978),
                  ),
                  recognizer: new TapGestureRecognizer()
                    ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Adoption-Assistant-Main.pdf');}
                ),
              ],
            ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child:          Text(
                  'Help create new families alongside our Adoptions Team at the Main Shelter. '
                      'Shifts are 2-4 hours. Times of greatest need: 12-5pm Saturday or Sunday '
                      'and 12-7pm Monday, Tuesday, Thursday, Friday.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 16.0,
                  ),
                ),
            ),


            Card(

              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Reception Assistant with Lost & Found Program - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Reception-Asst-Lost-Found-Rec-Desk-Descripiton.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child:            Text(
                  'Help reunite lost pets with their families. Available shifts: 10am-12pm Tuesday or Thursday, 12-2pm Friday, 3-5pm Wednesday, 5-7pm Monday or Friday.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 16.0,
                  ),
                ),
            ),


            Card(

              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Pet Profile Write - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch(
                              'https://www.giveshelter.org/assets/documents/Pet-Profile-Writer-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child:            Text(
                  'Help the public fall in love with our animals by writing compelling and informative profiles for adoptable pets.n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 16.0,
                  ),
                ),
            ),


            Card(

              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Reception Assistant - Front Office - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Reception-Assistant-Front-Office.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child:            Text(
                  'Help people who are helping animals by providing friendly and efficient customer service to shelter patrons.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 16.0,
                  ),
                ),
            ),



//
      ],
        ),
    ),
    );
  }



}

