import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/servicemenu/about_dchs.dart';
import 'package:project/screens/servicemenu/found_stray.dart';
import 'package:project/screens/servicemenu/lost_pet.dart';
import 'package:project/screens/servicemenu/microchip.dart';
import 'package:project/screens/servicemenu/rehome_pet.dart';
import 'package:project/screens/servicemenu/resources.dart';
import 'package:project/screens/servicemenu/wildlife.dart';
import 'package:project/screens/servicemenu/adopt.dart';
import 'package:project/screens/servicemenu/dogTraining.dart';


class ServiceMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    Widget titleSection = new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0,),
              child: new Text(" Our Services",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      letterSpacing: 1.0,
                      color: Color(0xff6b2978),
                      fontFamily: 'SourceSansPro'
                  )),

          ),

          Container(
            padding: EdgeInsets.only(bottom: 15.0,),
            child: new Image.asset('img/serviceMain.jpg'),
          ),

        ],
      ),
    );


    Widget buildButton(IconData icon, String buttonTitle,int i) {
      final Color tintColor = Color(0xff6b2978);
      switch (i) {
        case 1:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 18.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'SourceSansPro'),),

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
                  buttonTitle, style: new TextStyle(fontSize: 18.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'SourceSansPro'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Found_stray()),
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
                  buttonTitle, style: new TextStyle(fontSize: 18.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'SourceSansPro'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Wildlife()),
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
                  buttonTitle, style: new TextStyle(fontSize: 18.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'SourceSansPro'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => About_dchs()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ],
          );
          break;

        case 5:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 18.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'SourceSansPro'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lost_pet()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ],
          );
          break;

        case 6:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 18.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'SourceSansPro'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Microchip()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ],
          );
          break;

        case 7:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 18.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'SourceSansPro'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Adopt()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ],
          );
          break;

        case 8:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 18.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'SourceSansPro'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DogTrainingClass()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ],
          );
          break;

        case 9:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 18.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'SourceSansPro'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rehome_pet()),
                  );
                },

                // padding: EdgeInsets.all(0),
                color: Colors.white,
                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ],
          );
          break;
      }
    }

    Widget threeButtonsSection = new Container(

      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //build in a separated function
          buildButton(Icons.home, "Home",1),
          buildButton(Icons.pets, "Found a stray",2),
          buildButton(Icons.info, "About DCHS",4),

        ],
      ),
    );

    Widget threeButtonsSection1 = new Container(

      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          //build in a separated function
          buildButton(Icons.favorite, "Adopt",7),
          buildButton(Icons.navigation, "Rehome a pet",9),
          buildButton(Icons.local_hospital, "Wildlife Center",3),
        ],
      ),
    );


    Widget threeButtonsSection2 = new Container(
      //padding: EdgeInsets.only(left:6.0),
      //alignment: Alignment.topLeft,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          //build in a separated function
          buildButton(Icons.sd_storage, "Microchip",6),
          buildButton(Icons.search, "Lost a pet",5),
          buildButton(Icons.school, "Dog training class",8),
        ],
      ),
    );

    //return new MaterialApp(
    //home:
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Our Services',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
            fontFamily: 'SourceSansPro',
          ),
        ),
        backgroundColor: Color(0xff6b2978),
      ),


      body: new ListView(

        children: <Widget>[
          titleSection,
          threeButtonsSection,
          threeButtonsSection1,
          threeButtonsSection2,
          /*
                new Container(
                  padding: const EdgeInsets.all(15.0),
                  child:new Text('\nAbout',
                    style:new TextStyle(
                      color:Colors.deepPurpleAccent,
                      fontSize: 27.0,
                      fontFamily: 'SourceSansPro',

                    ),
                  ),
                ),
                 */
          new Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.only(top: 10, left:10.0, right:10.0,),
                  child: new Text(
                    'Looking for other resources like spay/neuter assistance?\n',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff6b2978),
                      fontFamily: 'SourceSansPro',
                    ),
                  ),
                ),

                new FlatButton(
                  onPressed: () {
                    debugPrint("Resources Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Resources();
                    }));
                  },
                  color: Color(0xffaa295d),

                  child: Text(
                    'Resources',
                    style: TextStyle(
                      fontSize: 25.0,
                      letterSpacing: 2.0,
                      fontFamily: 'SourceSansPro',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )



        ],
      ),

      //    )
    );//Widget with "Material design"

  }
}