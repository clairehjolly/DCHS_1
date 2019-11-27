import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class Y extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Youth Volunteering',
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
              'Youth Volunteering',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Color(0xff6b2978),
              ),
            ),

            Text(
              '\nWelcome to the next generation of animal advocates! Youth volunteers can help support DCHS by providing comfort and care to animals at the shelter, completing service projects or helping in many other ways.\n',
              style: TextStyle(
                fontFamily: 'Bitter',
                fontSize: 18.0,
                color: Color(0xff48148c),
              ),

            ),

            Image.asset('img/Yi.png'),

            Card(

              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Critter Cuddler - Main Shelter - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Critter-Cuddler-Main-Shelter-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Youth ages 8-17 can volunteer with an adult and 13-17 can volunteer solo caring for our smallest critters. Available shifts: 10-noon Sun, 3-5pm Wed or Thur, 4-6pm Thur or Fri, and 3-5pm Sat.\n',
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
                        text: 'Critter Cuddler - Mounds Pet Food Warehouse East - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Critter-Cuddler-Mounds-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Youth ages 8-17 can volunteer along with an adult giving our smallest critters some extra love and attention at the East Madison Mounds Pet Food Warehouse. Available shifts 3-5pm Sun thru Fri.\n',
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
                        text: 'Barkins'' Donation Assistant - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Barkins-Donation-Assistant-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Youth ages 16-17 can help sort and organize donations to the shelter. Items we either cannot use or have plenty of go to our Barkins'' Thrift Store where the public can purchase pet items they need.\n',
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
                        text: 'Feline Friend - Main Shelter - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Feline-Friend-Main-Shelter-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Youth ages 16-17 can help provide extra comfort and care to our cats at the Main Shelter.\n',
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
                        text: 'Classroom Animal Assistant - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Classroom-Animal-Assiant-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Youth ages 8-17 can volunteer along with a parent or guardian helping care for and give extra attention to our classroom animals.\n',
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
                        text: 'Thrift Store Assistant - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Thrift-Store-Assistant-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Youth ages 10-15 can volunteer with an adult and 16-17 can volunteer solo helping manage store donations. Shifts available: Weekends 10-1pm, 1-3pm and 3-5pm. Weekdays 10-1pm, 1-4pm and 4-7pm.\n',
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
