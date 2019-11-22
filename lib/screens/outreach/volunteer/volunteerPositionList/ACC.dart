import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';


class ACC extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Animal Care and Comfort',
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
              'Animal Care and Comfort',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Color(0xff6b2978),
              ),
            ),

            Text(
              '\nThousands of companion animals, exotic species and farm animals come through the DCHS doors every year seeking comfort and care. Volunteers play an essential role in helping care for the basic needs of animals as well as make them feel safe and loved.\n',
              style: TextStyle(
                fontFamily: 'Bitter',
                fontSize: 18.0,
                color: Color(0xff48148c),
              ),

            ),

            Image.asset('img/ACCi.png'),

            Card(

              child: new RichText(
                text: new TextSpan(
                  children: [
                    new TextSpan(
                        text: 'Admitting Assistant - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Admitting-Assistant-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Assist the Admitting Team who provides wellness exams and initial treatment for all animals coming to DCHS. Shifts available: 2-4pm Sunday.\n',
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
                        text: 'Animal Medical Services Assistant - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/AMS-Assistant-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Help our Animal Medical Services Team by caring for animals recovering from injury, illness or surgery in addition to providing general clinic assistance.\n',
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
                        text: 'Felines In Treatment Center Caretaker - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/FIT-Feline-Caretaker-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Provide care for cats in Maddie''s Felines in Treatment Center which houses our nationally renowned ringworm treatment program. Shifts available: 3-6pm Wednesday.\n',
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
                        text: 'Bather & Groomer - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Bather-Groomer-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Help animals at DCHS feel happy, fresh and clean by providing baths and grooming services.\n',
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
                        text: 'Canine Companion - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Canine-Companion-Purple-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Help care for dogs at DCHS by providing them with a clean, enriching environment as well as quality time.\n',
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
                        text: 'Carestaff Assistant - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Carestaff-Assistant-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Interact with nearly every species at the shelter by assisting our Carestaff with daily tasks from preparing meals to keeping cages clean and safe.\n',
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
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Classroom-Animal-Assistant-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Spend time with our classroom animals while preparing their meals and helping keep them clean and happy.\n',
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
              'Help give our small critters some love and attention. Available shifts: 10am-noon Sun, 3-5pm Wed or Thur, 4-6pm Thur or Frid and 3-5pm Sat. Available adult shifts: 8-10am Tues or Wed.\n',
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
                        text: 'Critter Cuddler - Mounds Fitchburg - [pdf]',
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
              'Help give our small critters some love and attention while they stay at Mounds in Fitchburg.\n',
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
              'Provide comfort and care to our cats at the Main Shelter. Greatest need: weekday mornings and afternoons. Some shifts available on weekends between 8am - 5pm.\n',
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
                        text: 'Feline Friend - Mounds Sun Prairie - [pdf]',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                          color: Color(0xff6b2978),
                        ),
                        recognizer: new TapGestureRecognizer()
                          ..onTap = (){launch('https://www.giveshelter.org/assets/documents/Feline-Friend-Mounds-Description.pdf');}
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Provide comfort and care to cats staying at Mounds Pet Food Warehouse in Sun Prairie. Available shifts: 11am-1pm Mon, Wed, Thur, Fri and 3-5pm Sun, Thur and Sat, and 1-3pm Fri.\n',
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

