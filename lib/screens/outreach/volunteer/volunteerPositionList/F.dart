import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class F extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Foster',
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
                child:Text(
                  'Foster',
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
                child:
                Text(
                  '\nIf you would like to help DCHS but you cannot fit into your lifestyle the traditional DCHS volunteer commitment to serve a regular weekly, two hour shift for six months, you may be interested in the following opportunity. \n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 18.0,
                  ),

                ),
            ),

            Text(
              '\nIf you would like to help DCHS but you cannot fit into your lifestyle the traditional DCHS volunteer commitment to serve a regular weekly, two hour shift for six months, you may be interested in the following opportunity. \n',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 18.0,
              ),

            ),

            Image.asset('img/Fi.png'),

            Card(

              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Companion Foster Parent - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Companion-Animal-Foster-Parent-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child:            Text(
                  'Provide a home for animals too young to be adopted, pregnant or new moms, those in need of extra socialization, those overly stressed at the shelter and those recovering from illness or injury.\n',
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
                        text: 'Foster Application - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Companion_Foster_App_Fillable-10-23-2018.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child:            Text(
                'Download, complete, sign and initial page 3 of the application then return to the DCHS Foster team at the Main Shelter, via email dchsfoster@giveshelter.org, or via fax (608) 838-0368.\n',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 16.0,
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }



}

