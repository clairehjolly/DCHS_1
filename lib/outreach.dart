import 'package:flutter/material.dart';
import 'package:flutter_app/admin.dart';
import 'package:flutter_app/calendar.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/setting.dart';
class outreach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget buildButton(IconData icon, String buttonTitle,int i) {
      final Color tintColor = Colors.deepPurple;
      switch (i) {
        case 1:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,


              ),


            ],
          );
          break;
        case 2:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,


              ),


            ],
          );
          break;
        case 3:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,


              ),


            ],
          );
          break;
        case 4:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,


              ),


            ],
          );
          break;
        default:
          break;
      }
    }

    Widget threeButtonsSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          //build in a separated function
          buildButton(Icons.home, "Home",1),
          buildButton(Icons.people_outline, "Volunteer",1),
          buildButton(Icons.favorite, "Foster",1),

        ],
      ),
    );

    Widget threeButtonsSection1 = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          //build in a separated function
          buildButton(Icons.attach_money, "Donate",1),
          buildButton(Icons.local_library, "Education",1),
          buildButton(Icons.help, "Resources",1),
          //buildButton(Icons.attach_money, "Donate",3),
          // buildButton(Icons.local_library, "Education",4),
          //buildButton(Icons.help, "Resources",3),
        ],
      ),
    );

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

               new Text("Community \nOutreach \n& Education",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          color:Colors.deepPurpleAccent,
                          fontFamily: 'Bitter'
                      )),

                new Image.asset(
                  'img/outreach.png',
                  width: 200,
                  height: 200,
                ),
                //Need to add spae below this Text ?

              ],
            ),
          );

//          new Icon(Icons.favorite, color: Colors.red),
//          new Text(" 100", style: new TextStyle(fontSize: 16.0),),


    return new MaterialApp(
        home: new Scaffold(
            appBar: AppBar(
              title: Text('Outreach',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.lightGreen,
                  fontFamily: 'Bitter',
                ),
              ),
              centerTitle: true,

              backgroundColor: Colors.deepPurpleAccent,
            ),
            body: new ListView(


                children: <Widget>[
                  titleSection,
                  threeButtonsSection,
                  threeButtonsSection1,
                  new Text('About',
                  style:new TextStyle(
                    color:Colors.deepPurpleAccent,
                    fontSize: 30.0,
                    fontFamily: 'Bitter'

                  ),
                  ),
                  SizedBox(height: 10.0),
                  new Container(

                  child: new Text("DCHS offers a variety of educational programs for all ages. These programs provide one-of-a-kind experiences that teach not only about DCHS services but how to help make our community a better place for both people and animals.",
                    style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 16.0,
                        fontFamily: 'Bitter'
                    ),
                  ),
                  )
              ],
            ),

            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => setting()),
                );
              },
              backgroundColor: Colors.deepPurpleAccent,
              child: Text('setting',style: new TextStyle(fontSize: 10),),


            )
        ));//Widget with "Material design"

  }
}