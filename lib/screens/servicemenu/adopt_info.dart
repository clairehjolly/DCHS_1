import 'package:flutter/material.dart';
import 'package:project/screens/admin/newAnimal.dart';
//import 'package:project/screens/home/admin.dart';
//import 'package:project/screens/home/calendar.dart';
import 'package:project/screens/home/home.dart';
//import 'package:project/screens/home/outreach.dart';
//import 'package:project/screens/home/settings.dart';
//import 'package:project/screens/home/serviceMenu.dart';
//import 'package:project/screens/servicemenu/adopt.dart';
import 'package:url_launcher/url_launcher.dart';


class adopt_info extends StatelessWidget {
  final NewAnimal a1;
   adopt_info({Key key,@required this.a1}):super(key:key);
  @override
  Widget build(BuildContext context) {


    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(left: 70.0,bottom: 10.0),
                  child: new Text("Animal Information",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          letterSpacing: 2.0,
                          color:Color(0xff6b2978),
                          fontFamily: 'SourceSansPro'
                      )),
                ),
               // Need to add space below this Text ?

                Card(
                  color: Color(0xffaa295d),
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  child: ListTile(
                    title: Text('Age: ' + a1.age,
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xffaa295d),
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  child: ListTile(
                    title: Text('Gender: ' + a1.sex,
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xffaa295d),
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  child: ListTile(
                    title: Text('Species: ' + a1.species,
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xffaa295d),
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  child: ListTile(
                    title: Text('Breed: ' + a1.breed,
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xffaa295d),
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  child: ListTile(
                    title: Text('Status: ' + a1.status,
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xffaa295d),
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  child: ListTile(
                    title: Text('Location: ' + a1.location,
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xffaa295d),
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  child: ListTile(
                    title: Text('Adoption Fee: ' + a1.adoptionFee,
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xffaa295d),
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  child: ListTile(
                    title: Text('Lonely Hearts: ' + a1.lonelyHearts,
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Color(0xffaa295d),
                  elevation: 2.0,
                  margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                  child: ListTile(
                    title: Text('Description: ' + a1.description,
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),


                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child:                GestureDetector(child:new Text("Find out how to sponsor adoptable\nanimals like "+a1.name,
                    style: new TextStyle(
                      color: Color(0xff96be04),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SourceSansPro',
                    ),

                  ),
                    onTap: (){
                      launch("https://www.giveshelter.org/how-to-help/donate/animal-sponsorship");
                    },

                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );


    return  new Scaffold(
            appBar: AppBar(
              title: Text(a1.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.white,
                  fontFamily: 'SourceSansPro',
                ),
              ),
              centerTitle: true,

              backgroundColor: Color(0xff96be04),
            ),
            body: new SingleChildScrollView(

              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  ),
                  Image.network(a1.animalPic, height: 300.0,),
                  titleSection,

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
            backgroundColor: Color(0xff6b2978),
          ),

    );
  }
}