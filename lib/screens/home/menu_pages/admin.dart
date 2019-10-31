import 'package:flutter/material.dart';

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:Text(
            'Admin',
            style: TextStyle(
              fontFamily: 'Bitter',
              fontSize: 25.0,
            ),
          ),
        ),
        backgroundColor: Color(0xff6b2978),

      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            FlatButton.icon(
              onPressed: () {},
              color: Color(0xffffc50d),
              icon: Icon(Icons.pets),
              label: Text(
                'Animals',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bitter',
                ),
              ),
            ),


            FlatButton.icon(
              onPressed: () {},
              color: Color(0xffaa295d),
              icon: Icon(Icons.menu),
              label: Text(
                'Services',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bitter',
                ),
              ),
            ),

            FlatButton.icon(
              onPressed: () {},
              color: Color(0xff96be04),
              icon: Icon(Icons.calendar_today),
              label: Text(
                'Schedules',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bitter',
                ),
              ),
            ),


          ],

        ),
      ),
    );
  }
}