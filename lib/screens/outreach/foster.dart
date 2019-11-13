import 'package:flutter/material.dart';

//HAVE ANIMAL LISTED HERE LATER

class Foster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'Foster Information',
            style: TextStyle(
              fontFamily: 'Bitter',
              fontSize: 25.0,
            ), //TextStyle
          ),
        ),
        backgroundColor: Color(0xff6b2978),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(

              color: Colors.amber,
              child: Text('If you would like to help DCHS but you cannot fit into your lifestyle the'+
                  'traditional DCHS volunteer commitment to serve a regular weekly,'+
                  ' two hour shift for six months, you may be interested in the following opportunity'+
                  ' \n\nProvide a home for animals too young to be adopted, pregnant or new moms'+
                  ' those in need of extra socialization, those overly stressed at the shelter and those'+
                  'recovering from illness or injury',
                  style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 14.0,
              )),
            ),


            FlatButton.icon(
              onPressed: () {}, //Direct user to About This APP View
              color: Color(0xff96be04),
              icon: Icon(Icons.assistant),
              label: Text(
                'Application  form',
                style: TextStyle(
                  fontSize: 24.0,
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