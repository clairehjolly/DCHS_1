import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Center(
        child:Text(
          'Admin',
          style: TextStyle(
            fontFamily: 'Bitter',
          ),
        ),
      ),
      backgroundColor: Color(0xff6b2978),

    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          //color: Color(0xffffc50d),
          child: Text(
            'ANIMAL',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'Bitter',
            ),
          ),

        ),
        FlatButton(
          onPressed: () {},
          color: Color(0xffffc50d),
          child: Text(
            'Edit',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Bitter',
            ),
          ),
        ),
        FlatButton(
          onPressed: () {},
          color: Color(0xffffc50d),
          child: Text(
            'Add',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Bitter',
            ),
          ),
        ),
        FlatButton(
          onPressed: () {},
          color: Color(0xffffc50d),
          child: Text(
            'Delete',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Bitter',
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          // color: Color(0xffaa295d),
          child: Text(
            'SERVICES',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'Bitter',
            ),
          ),

        ),
        FlatButton(
          onPressed: () {},
          color: Color(0xffaa295d),
          child: Text(
            'Edit',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Bitter',
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          //color: Color(0xff96be04),
          child: Text(
            'SCHEDULE',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'Bitter',
            ),
          ),

        ),
        FlatButton(
          onPressed: () {},
          color: Color(0xff96be04),
          child: Text(
            'Edit',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Bitter',
            ),
          ),
        ),
        FlatButton(
          onPressed: () {},
          color: Color(0xff96be04),
          child: Text(
            'Add',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Bitter',
            ),
          ),
        ),
        FlatButton(
          onPressed: () {},
          color: Color(0xff96be04),
          child: Text(
            'Delete',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Bitter',
            ),
          ),
        ),



      ],

    ),
  ),

  //),

));
