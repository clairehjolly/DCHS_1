import 'package:flutter/material.dart';
import 'package:project/screens/servicemenu/lostpet/lostAnimal.dart';
import 'package:url_launcher/url_launcher.dart';


class Lost_pet_profile extends StatelessWidget {

  final LostAnimal a1;
  Lost_pet_profile({Key key,@required this.a1}):super(key:key);

  @override
  Widget build(BuildContext context) {

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        children: <Widget>[

          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
                  child: new Text(a1.name,
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 27.0,
                          color:Color(0xff6b2978),
                          fontFamily: 'SourceSansPror'
                      )),
                ),
                new Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 15.0),
                  child: new Text(
                      "Age: "+ a1.age + "\nGender: "+a1.sex + "\nSpecies: "+a1.species
                          + "\nLocation: "+a1.location + "\nDescription: "+a1.description,
                      style: new TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey[850],
                          fontFamily: 'Bitter'
                      )),
                ),


              ],
            ),
          ),
        ],
      ),
    );


    return new Scaffold(
      appBar: AppBar(
        title: Text( 'Lost Pet',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
            fontFamily: 'SourceSansPror',
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffffc50d),
      ),
      body: new SingleChildScrollView(

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('img/dchslogo3.png'),
            Image.network(a1.animalPic, height: 300.0,),
            titleSection,

          ],
        ),
      ),
      /*
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
*/
    );
  }
}