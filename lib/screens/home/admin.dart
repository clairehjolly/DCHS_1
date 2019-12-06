import 'package:flutter/material.dart';
import 'package:project/screens/admin/animals.dart';

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
              fontFamily: 'Bitter',
              fontSize: 25.0,
            ),
          ),
        ),
        backgroundColor: Color(0xffaa295d),

      ),
      body: new Container(
        alignment: Alignment(0.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,


          children: <Widget>[

            Image.asset('img/dchslogo.jpeg'),

            Text(
              '    Click the button below to \n   add/edit/delete animal(s): ',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff6b2978),
              ),
            ),

            FlatButton.icon(
              onPressed: () {
                debugPrint("Animal Button Clicked");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Animals();
                }));
              },
              color: Color(0xffffc50d),
              icon: Icon(Icons.pets),
              label: Text(
                'Animal List',
                style: TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'SourceSansPro',
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}