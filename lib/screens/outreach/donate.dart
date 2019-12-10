import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';

class Donate extends StatefulWidget {

  @override
  _DonateState createState() => _DonateState();

}

class _DonateState extends State<Donate> {

  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0), //Top, Right, Bottom, Left
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          new Text("Donate",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Color(0xff6b2978),
                  fontFamily: 'Bitter'
              )),

        ],
      ),
    );

    // return new MaterialApp(
    //   home:
    return new Scaffold(
      appBar: AppBar(
        title: Text('Donate',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
            fontFamily: 'Bitter',
          ),
        ),
        centerTitle: true,

        backgroundColor: Color(0xff96be04),
      ),
      body: new ListView(


        children: <Widget>[
          titleSection,

          new Container(
            padding: const EdgeInsets.all(30.0),
          )

        ],
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
    ); //Widget with "Material design"

    // }


  }

}