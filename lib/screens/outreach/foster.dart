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
            children: <Widget>[
              Container(
                color: Color(0xffffc50d),
                child: Text(
                  'to do: Helpful information, foster description(  what do fosters do), Application process, Link to website for more application details ',
                  style: TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}