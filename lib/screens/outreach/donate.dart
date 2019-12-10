import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';


class Donate extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:
          Text(
            'Donate',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 20.0,
            ),
          ),
        ),

        backgroundColor: Color(0xff96be04),

      ),

      resizeToAvoidBottomInset: false,

      body: new SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,


          children: <Widget>[


            Text(
              'Donate',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Color(0xff6b2978),


              ),
              textAlign: TextAlign.center,

            ),

            Image.asset('img/donate.jpg'),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
              child:             Text(
                'Thank you for donating to DCHS to help animals in need and create a more humane community! '
                    'Your support allows us the flexibility to apply your gift immediately for daily shelter, '
                    'wildlife and community outreach operations; helps us meet unplanned, unmet and unanticipated '
                    'needs in our community; and sparks innovative best practices to serve as a model for animal '
                    'welfare organizations nationwide.',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),

            Column(
              children: <Widget>[

                Container(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child:                FlatButton(
                      onPressed: (){launch('https://www.giveshelter.org/how-to-help/donate/constant-companion');},
                      color: Color(0xffaa295d),
                      child: new Column(
                        children: <Widget>[
                          Text(
                            'Monthly Giving',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'SourceSansPro',
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),

                          Text(
                            'When you become a Constant Companion, your monthly donation provides vital and reliable '
                                'support via automatic deduction.\n\n',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                'SET UP YOUR GIFT',
                                style: TextStyle(
                                  fontFamily: 'SourceSansPro',
                                  fontSize: 20.0,
                                  letterSpacing: 2.0,
                                  color: Color(0xffffc50d),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_right, color: Color(0xffffc50d),),
                            ],
                          ),

                        ],
                      ),

                    ),

                ),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: FlatButton(
                    onPressed: (){launch('https://www.giveshelter.org/how-to-help/in-honor-or-memorial-gifts');},

                    color: Color(0xffaa295d),
                    child: new Column(
                      children: <Widget>[
                        Text(
                          'Memorial and Tribute Giving',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SourceSansPro',
                            letterSpacing: 2.0,
                            color: Colors.white,
                          ),
                        ),

                        Text(
                          'Your gift can be made in honor or memory of a special person, pet or event.\n\n',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),

                        Row(
                          children: <Widget>[
                            Text(
                              'LEARN MORE',
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 20.0,
                                letterSpacing: 2.0,

                                color: Color(0xffffc50d),
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_right, color: Color(0xffffc50d),),
                          ],
                        ),

                      ],
                    ),

                  ),

                ),



                Container(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child:                FlatButton(
                      onPressed: (){launch('https://www.giveshelter.org/how-to-help/other-ways-to-give');},

                      color: Color(0xffaa295d),
                      child: new Column(
                        children: <Widget>[
                          Text(
                            'Learn Other Ways to Help',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'SourceSansPro',
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),

                          Text(
                            'There are ways you can help DCHS throughout the year. Join us at events, host a '
                                'fundraiser and explore other ways to help DCHS.\n',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),

                          Row(
                            children: <Widget>[
                              Text(
                                'LEARN MORE',
                                style: TextStyle(
                                  letterSpacing: 2.0,

                                  fontFamily: 'SourceSansPro',
                                  fontSize: 20.0,
                                  color: Color(0xffffc50d),
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_right, color: Color(0xffffc50d),),
                            ],
                          ),

                        ],
                      ),

                    ),
                ),


              ],
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
        backgroundColor: Color(0xff96be04),
      ),
    );
  }
}
