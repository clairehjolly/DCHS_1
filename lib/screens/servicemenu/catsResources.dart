import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';


class Cats extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:
          Text(
            'Cats',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
        Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child:        Text(
          'CAT CARE & BEHAVIOR RESOURCES',
          style: TextStyle(
            fontSize: 36.0,
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.bold,
            color: Color(0xff6b2978),
          ),
        ),
        ),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child:            Text(
                  'We are here to connect you with the resources you need to address care '
                      'and behavior issues with your feline friend.',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,

                    fontFamily: 'SourceSansPro',
                  ),
                ),
            ),

            Image.asset('img/cat.png'),

            Card(
              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'General Cat Care',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.aspca.org/pet-care/cat-care/general-cat-care');}
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
                        text: 'Cat Grooming Tips',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.aspca.org/pet-care/cat-care/cat-grooming-tips');}
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
                        text: 'Cat Nutrition Tips',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.aspca.org/pet-care/cat-care/cat-nutrition-tips');}
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
                        text: 'Cats and Kids',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.aspca.org/pet-care/cat-care/cats-and-babies');}
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
                        text: 'Common Cat Diseases',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.aspca.org/pet-care/cat-care/common-cat-diseases');}
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
                        text: 'Common Cat Behavior Issues',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.aspca.org/pet-care/cat-care/common-cat-behavior-issues');}
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
