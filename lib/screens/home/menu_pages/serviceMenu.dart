import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:Text(
            'Services',
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
              icon: Icon(Icons.info_outline), ///
              label: Text(
                'About DCHS',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bitter',
                ),
              ),
            ),


            FlatButton.icon(
              onPressed: () {},
              color: Color(0xffaa295d),
              icon: Icon(Icons.local_hospital), /////
              label: Text(
                'Wildlife Center',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bitter',
                ),
              ),
            ),

            FlatButton.icon(
              onPressed: () {},
              color: Color(0xff96be04),
              icon: Icon(Icons.navigation), /////
              label: Text(
                'Rehome a pet',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bitter',
                ),
              ),
            ),

            FlatButton.icon(
              onPressed: () {},
              color: Color(0xffffc50d),
              icon: Icon(Icons.pets), ///
              label: Text(
                'Found a stray',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bitter',
                ),
              ),
            ),

            FlatButton.icon(
              onPressed: () {},
              color: Color(0xffffc50d),
              icon: Icon(Icons.favorite), ///
              label: Text(
                'Adopt',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bitter',
                ),
              ),
            ),

            FlatButton.icon(
              onPressed: () {},
              color: Color(0xffffc50d),
              icon: Icon(Icons.sd_storage), ///
              label: Text(
                'Microchipping',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bitter',
                ),
              ),
            ),

            FlatButton.icon(
              onPressed: () {},
              color: Color(0xffffc50d),
              icon: Icon(Icons.school), ///
              label: Text(
                'Dog training class',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bitter',
                ),
              ),
            ),

            FlatButton.icon(
              onPressed: () {},
              color: Color(0xffffc50d),
              icon: Icon(Icons.search), ///
              label: Text(
                'Losing a pet',
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
