import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';


class Dogs extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:
          Text(
            'Dogs',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 25.0,
            ),
          ),
        ),

        backgroundColor: Color(0xff96be04),

      ),

      resizeToAvoidBottomInset: false,

      body: new SingleChildScrollView(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child:            Text(
                'DOG CARE & BEHAVIOR RESOURCES',
                style: TextStyle(
                  fontSize: 36.0,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.2,
                  color: Color(0xff6b2978),
                ),
              ),
            ),


            Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child:            Text(
                  'We are here to connect you with the resources you need to address '
                      'care and behavior issues with your canine companion.',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
            ),


            Image.asset('img/dogs.png'),

            Card(
              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'General Dog Care',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.aspca.org/pet-care/dog-care/general-dog-care');}
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
                        text: 'Dogs and Kids',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.aspca.org/pet-care/dog-care/dogs-and-babies');}
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
                        text: 'Dog Grooming Tips',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.aspca.org/pet-care/dog-care/dog-grooming-tips');}
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
                        text: 'Dog Nutrition Tips',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.aspca.org/pet-care/dog-care/dog-nutrition-tips');}
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
                        text: 'Common Dog Diseases',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.aspca.org/pet-care/dog-care/common-dog-diseases');}
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
                        text: 'Common Dog Behavior Issues',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.aspca.org/pet-care/dog-care/common-dog-behavior-issues');}
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
                        text: 'Dog Bite Prevention',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.aspca.org/pet-care/dog-care/dog-bite-prevention');}
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
                        text: 'Selecting a Dog Trainer',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.whole-dog-journal.com/issues/13_9/features/Dog-Training-Professionals_20063-1.html?s=FB022113');}
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
                        text: 'Madison Dog Parks',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('http://www.cityofmadison.com/parks/play/dogsInParks.cfm');}
                    ),
                  ],
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child:            Text(
                'If you don''t find the answers you are seeking after reviewing these '
                    'links, please call us at (608) 838-0413 ext. 100.',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
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
