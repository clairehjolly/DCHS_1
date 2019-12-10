import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';


class Birds extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:
          Text(
            'Birds',
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
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child:            Text(
                'BIRD CARE & BEHAVIOR RESOURCES',
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
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child:            Text(
                  'We are here to connect you with the resources you need to address '
                      'care and behavior issues with your feathered companion.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),
            ),


            Image.asset('img/bird.png'),

            Card(
              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Bird Care Guides by Species',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.petsmart.com/learning-center/bird-care/');}
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
                        text: 'General Bird Care',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.lovethatpet.com/small-pets/birds/');}
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
                        text: 'Companion Parrot Quarterly',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('http://www.petbirdreport.com/');}
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
                        text: 'World Parrot Trust',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('http://www.worldparrottrust.org/');}
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
                        text: 'National Cockatiel Society',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('http://www.cockatiels.org/');}
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
                        text: 'Birds-n-Ways',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('http://www.birdsnways.com/');}
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
                        text: 'Lafeber',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('http://www.lafeber.com/');}
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
                        text: 'American Federation of Aviculture',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('http://www.afabirds.org/');}
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
                        text: 'National Finch & Softbill Society',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('http://www.nfss.org/');}
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
                        text: 'American Cockatiel Society',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('http://www.acstiels.com/');}
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
                        text: 'Wings & Things Exotic',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 22.0,
                          color: Color(0xff96be04),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('http://www.cottageworks.com/wingsandthings/index.html');}
                    ),
                  ],
                ),
              ),
            ),


            ExpansionTile(
              title: Text(
                'Avian Sanctuaries',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Text(
                  'Fine Feathered Friends Sanctuary, Inc.\n\n1570 County Highway A\n\nEdgerton, WI 53534\n\n(608) 541-0090 \n',
                  style:TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Wisconsin Bird Clubs',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Text(
                  'Madison Area Cagebird Association of Wisconsin (MACAW)\n',
                  style:TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),



          ],
        ),


      ),

    );
  }
}
