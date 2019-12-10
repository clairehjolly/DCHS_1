import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/servicemenu/birdsResources.dart';
import 'package:project/screens/servicemenu/catsResources.dart';
import 'package:project/screens/servicemenu/dogsResources.dart';
import 'package:project/screens/servicemenu/rabbitResources.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';


class GPT extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:
          Text(
            'General Pet Tips',
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
        Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child:        Text(
          'PET CARE & BEHAVIOR RESOURCES',
          style: TextStyle(
            fontSize:36.0,
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.bold,
            color: Color(0xff6b2978),
          ),
        ),
        ),


            Image.asset('img/gpt.png'),

            Container(
              padding: EdgeInsets.symmetric(vertical:10.0, horizontal: 10.0),
              child:Text(
                'Pet care or behavior problems can seem overwhelming, but many can be managed with the application of a little knowledge and effort. We''re here to help you find answers to your pet care and behavior questions.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  fontFamily: 'SourceSansPro',
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical:5.0),
              child:            MaterialButton(
                height: 60.0,
                onPressed: () {
                  debugPrint("Dogs Button Clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Dogs();
                  }));
                },
                color: Color(0xffaa295d),
                child: Text(
                  'Dog Care & Behavior Resources',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SourceSansPro',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),



            Container(
                padding: EdgeInsets.symmetric(vertical:5.0),
                child:            MaterialButton(
                  height: 60.0,
                  onPressed: () {
                    debugPrint("Cats Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Cats();
                    }));
                  },
                  color: Color(0xffaa295d),
                  child: Text(
                    'Cats Care & Behavior Resources',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SourceSansPro',
                      fontSize: 18.0,
                    ),
                  ),
                ),
            ),



            Container(
                padding: EdgeInsets.symmetric(vertical:5.0),
                child:            MaterialButton(
                  height: 60.0,
                  onPressed: () {
                    debugPrint("Rabbits Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Rabbits();
                    }));
                  },
                  color: Color(0xffaa295d),
                  child: Text(
                    'Rabbits Care & Behavior Resources',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SourceSansPro',
                      fontSize: 18.0,
                    ),
                  ),
                ),
            ),


            Container(
                padding: EdgeInsets.symmetric(vertical:5.0),
                child:            MaterialButton(
                  height: 60.0,
                  onPressed: () {
                    debugPrint("Birds Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Birds();
                    }));
                  },
                  color: Color(0xffaa295d),
                  child: Text(
                    'Birds Care & Behavior Resources',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'SourceSansPro',
                      fontSize: 18.0,
                    ),
                  ),
                ),
            ),

            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child:            Text(
                'Pet-Friendly Housing',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
            ),



            Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child:            Text(
                  'Looking for a pet friendly rental property? Most of the major real estate search engines now allow you to search for pet friendly housing. After you run your search, you can then click on individual properties to learn more about their pet policies and fees. Here are some helpful places to search:\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 18.0,
                  ),
                ),
            ),



            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  child: new RichText(
                    text: new TextSpan(
                      children: [
                        new TextSpan(
                            text: 'Zillow',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 22.0,
                              color: Color(0xff96be04),
                            ),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = (){launch('https://www.zillow.com/');}
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
                            text: 'Apartments.com',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 22.0,
                              color: Color(0xff96be04),
                            ),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = (){launch('https://www.apartments.com/');}
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
                            text: 'Trulia',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 22.0,
                              color: Color(0xff96be04),
                            ),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = (){launch('https://www.trulia.com/');}
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
                            text: 'Rent.com',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 22.0,
                              color: Color(0xff96be04),
                            ),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = (){launch('https://www.rentcafe.com/pet-friendly-apartments-for-rent/us/wi/madison/');}
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
                            text: 'RENTCafe.com',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 22.0,
                              color: Color(0xff96be04),
                            ),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = (){launch('https://www.rentcafe.com/pet-friendly-apartments-for-rent/us/wi/madison/');}
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
                            text: 'ApartmentGuide.com',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 22.0,
                              color: Color(0xff96be04),
                            ),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = (){launch('https://www.apartmentguide.com/apartments/Wisconsin/Madison/pet-friendly-4lh/?fbclid=IwAR2231wDGfEGpPqD4teXcqc3bYSEjzJMXOvpYe5WzL6q6yciVVAmAgWrcFg');}
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
                            text: 'Zumper',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 22.0,
                              color: Color(0xff96be04),
                            ),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = (){launch('https://www.zumper.com/apartments-for-rent/madison-wi/pet-friendly');}
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),

            Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child:            Text(
                  'Baby-Ready Pets',
                  style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
            ),


            Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child:            Text(
                  'Introducing a baby or young child into your home can be exciting and overwhelming and will change everyone''s lives, including your pets''. You may be afraid that your pet will not do well with children or you may be worried about not having enough time to spend with your pet after the baby arrives. The resources below include suggestions on how to provide proper introductions between your pet and child, as well as solutions to common issues and concerns.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 18.0,
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
        backgroundColor: Color(0xff96be04),
      ),
    );
  }
}
