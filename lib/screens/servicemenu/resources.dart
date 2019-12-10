import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/servicemenu/birdsResources.dart';
import 'package:project/screens/servicemenu/catsResources.dart';
import 'package:project/screens/servicemenu/dogsResources.dart';
import 'package:project/screens/servicemenu/generalPetTips.dart';
import 'package:project/screens/servicemenu/petAdoptionTips.dart';
import 'package:project/screens/servicemenu/rabbitResources.dart';
import 'package:url_launcher/url_launcher.dart';

class Resources extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:
          Text(
            'Resources',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 25.0,
            ),
          ),
        ),

        backgroundColor: Color(0xffaa295d),

      ),

      resizeToAvoidBottomInset: false,

      body: new SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,


          children: <Widget>[

            Text(
              'Resources',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Color(0xff6b2978),


              ),
              textAlign: TextAlign.center,

            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child:Image.asset('img/resourcesMain.png'),

            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0,),
              child:             Text(
                'DCHS is here to connect you with the resources you need, whether you are looking '
                    'for pet care and behavior resources, for spay/neuter assistance or to support '
                    'the organizations that support us.\n',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,

                ),
              ),
            ),



            Text(
              'Pet Resources',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff6b2978) ,

              ),
              textAlign: TextAlign.center,

            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new ButtonTheme(
                      child: new ButtonBar(
                        children: <Widget>[
                          MaterialButton(
                            height: 120.0,
                            minWidth: 120.0,
                            onPressed: () {
                              debugPrint("Dogs Button Clicked");
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Dogs();
                              }));
                            },
                            color: Color(0xff96be04),
                            child: Text(
                              'Dogs',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SourceSansPro',
                                fontSize: 18.0,
                              ),
                            ),
                          ),

                          MaterialButton(
                            height: 120.0,
                            minWidth: 120.0,
                            onPressed: () {
                              debugPrint("Cats Button Clicked");
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Cats();
                              }));
                            },
                            color: Color(0xff96be04),
                            child: Text(
                              'Cats',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SourceSansPro',
                                fontSize: 18.0,
                              ),
                            ),
                          ),

                          MaterialButton(
                            height: 120.0,
                            minWidth: 120.0,
                            onPressed: () {
                              debugPrint("Rabbits Button Clicked");
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Rabbits();
                              }));
                            },
                            color: Color(0xff96be04),
                            child: Text(
                              'Rabbits',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SourceSansPro',
                                fontSize: 18.0,
                              ),
                            ),
                          ),

                        ],
                      ),

                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new ButtonTheme(
                     // minWidth: 300.0,
                     // height: 300.0,
                      //padding: const EdgeInsets.all(20.0),

                      child: new ButtonBar(
                        children: <Widget>[
                          MaterialButton(
                            height: 120.0,
                            minWidth: 120.0,
                            onPressed: () {
                              debugPrint("Birds Button Clicked");
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Birds();
                              }));
                            },
                            color: Color(0xff96be04),
                            child: Text(
                              'Birds',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SourceSansPro',
                                fontSize: 18.0,
                              ),
                            ),
                          ),

                          MaterialButton(
                            height: 120.0,
                            minWidth: 120.0,
                            onPressed: () {
                              debugPrint("GPT Button Clicked");
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return GPT();
                              }));
                            },
                            color: Color(0xff96be04),
                            child: Text(
                              'General Pet\n       Tips',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SourceSansPro',
                                fontSize: 18.0,
                              ),
                            ),
                          ),

                          MaterialButton(
                            height: 120.0,
                            minWidth: 120.0,
                            onPressed: () {
                              debugPrint("PAT Button Clicked");
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return PAT();
                              }));
                            },
                            color: Color(0xff96be04),
                            child: Text(
                              'Pet Adoption\n        Tips',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'SourceSansPro',
                                fontSize: 18.0,
                              ),
                            ),
                          ),

                          ],
                      ),

                    ),
                  ],
                ),


              ],
            ),

            Text(
              '\nSpay & Neuter Assistance',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff6b2978),

              ),
              textAlign: TextAlign.center,
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0,),
              child: Text(
                'One of the most important decisions you can make is to spay or neuter your pet. By spaying or neutering your pet, you will help control the pet homelessness problem by preventing accidental litters. There are also medical and behavioral benefits to spaying and neutering your animals.\n',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
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
