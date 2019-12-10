import 'package:flutter/material.dart';
import 'package:project/screens/admin/animals.dart';
import 'package:project/screens/home/home.dart';

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Admin',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 25.0,
            ),
          ),
        ),
        backgroundColor: Color(0xff6b2978),

      ),
      body: new Container(
        alignment: Alignment(0.0, 0.0),
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[

            Image.asset('img/dchslogo3.png'),

            Image.asset('img/dogs.png'),

            Container(
              padding: EdgeInsets.symmetric(horizontal:10.0, vertical: 20.0,),
              child:            Text(
                'Click the button below to add/edit/delete animal(s): ',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),

            ),

            FlatButton(
              onPressed: () {
                debugPrint("Animal Button Clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Animals();
                }));
              },
              color: Color(0xffaa295d),

              child: Text(
                'Animal List',
                style: TextStyle(
                  fontSize: 25.0,
                  letterSpacing: 2.0,
                  color: Colors.white,
                  fontFamily: 'SourceSansPro',
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

