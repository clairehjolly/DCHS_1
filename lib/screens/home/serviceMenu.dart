import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/servicemenu/about_dchs.dart';
import 'package:project/screens/servicemenu/found_stray.dart';
import 'package:project/screens/servicemenu/lost_pet.dart';
import 'package:project/screens/servicemenu/microchip.dart';
import 'package:project/screens/servicemenu/wildlife.dart';
import 'package:project/screens/servicemenu/adopt.dart';


class ServiceMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          new Text("Our\nServices",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color:Color(0xff6b2978),
                  fontFamily: 'Bitter'
              )),

          //new Image.file(new File("/Users/gs/Downloads/1.jpeg")),
          //new Image.asset('imgs/logo.jpeg'),
          new Image.network(
            'https://storage.googleapis.com/petbacker/images/blog/2017/dog-and-cat-cover.jpg',
            width: 200,
            height: 200,
          ),
          //Need to add spae below this Text ?

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
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

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
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

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
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

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
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

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
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

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
      }
    }

    Widget threeButtonsSection = new Container(

      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //build in a separated function
          buildButton(Icons.home, "Home",1),
          buildButton(Icons.pets, "Found a stray",2),
          buildButton(Icons.info_outline, "About DCHS",4),

        ],
      ),
    );

    Widget threeButtonsSection1 = new Container(

      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          //build in a separated function
          buildButton(Icons.favorite, "Adopt",7),
          buildButton(Icons.navigation, "Rehome a pet",1),
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
          buildButton(Icons.school, "Dog training class",1),
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
            fontFamily: 'Bitter',
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
                      fontFamily: 'Bitter',

                    ),
                  ),
                ),
                 */
          new Container(
            padding: const EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 15.0),
            child: new Text("For nearly 100 years, DCHS has provided services for our community, helping people help animals. Whether you are looking to bring a new pet into your family, searching for your lost pet, found a wild animal in need of assistance or have made the difficult decision to surrender your pet, DCHS is here to help.",
              style: new TextStyle(
                color: Colors.grey[850],
                fontSize: 20.0,
                fontFamily: 'Bitter',
                height: 1.5,
              ),
            ),
          )
        ],
      ),

      //    )
    );//Widget with "Material design"

  }
}