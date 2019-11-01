import 'package:flutter/material.dart';
import 'package:project/screens/home/menu_pages/animals.dart';

// This shows the list of information of Animal

class AnimalProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'Animal Profile',
            style: TextStyle(
              fontFamily: 'Bitter',
              fontSize: 25.0,
            ), //TextStyle
          ),
        ),
        backgroundColor: Color(0xff6b2978),
      ),

      body: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Text('COMING SOON:Animal Info Here'),
            ),
          ],
      ),
    );
  }
}