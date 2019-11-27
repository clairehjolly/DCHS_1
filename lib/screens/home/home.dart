import 'package:flutter/material.dart';
import 'package:project/screens/home/admin.dart';
import 'package:project/screens/home/calendar.dart';
import 'package:project/screens/home/outreach.dart';
import 'package:project/screens/home/settings.dart';
import 'package:project/screens/home/serviceMenu.dart';

void main() => runApp(MaterialApp(
  home:Home(),
));
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        children: <Widget>[
          new Container(      /// for yutai's outreach.dart
            child: Text("Home",
              style: TextStyle(
                  color: Colors.white),
            ),/////
          ),
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text("Helping People Helping Animals",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color:Color(0xff6b2978),
                          fontFamily: 'Bitter'
                      )),
                ),
                //Need to add space below this Text ?
                new Text("For nearly 100 years, DCHS has provided services for our community, helping people help animals. Whether you are looking to bring a new pet into your family, searching for your lost pet, found a wild animal in need of assistance, have made the difficult decision to surrender your pet or are looking for educational opportunities, DCHS is here to help.",
                  style: new TextStyle(
                      color: Colors.grey[850],
                      fontSize: 16.0,
                      fontFamily: 'SourceSansPro'
                  ),
                ),
              ],
            ),
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
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600, color: tintColor,fontFamily: 'Bitter'),),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Admin()),
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
                    MaterialPageRoute(builder: (context) => ServiceMenu()),
                  );
                },
                color: Colors.white,
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
                    MaterialPageRoute(builder: (context) => Outreach()),
                  );
                },
                color: Colors.white,
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
                    MaterialPageRoute(builder: (context) => Calendar()),
                  );
                },
                color: Colors.white,
              ),
            ],
          );
          break;
        default:
          break;
      }
    }

    Widget fourButtonsSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: <Widget>[
          //build in a separated function
          buildButton(Icons.supervised_user_circle, "Admin",1),
          buildButton(Icons.scatter_plot, "Service",2),
          buildButton(Icons.search, "Outreach",3),
          buildButton(Icons.calendar_today, "Calendar",4),
        ],
      ),
    );


    return new MaterialApp(
        home: new Scaffold(
            appBar: AppBar(
              title: Text('Dane County Humane Society',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.white,
                  fontFamily: 'Bitter',
                ),
              ),
              centerTitle: true,

              backgroundColor: Color(0xff6b2978),
            ),
            body: new SingleChildScrollView(

              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset('img/dchslogo3.png'),
                  Image.asset('img/homePage.png', height: 300.0,),

                  fourButtonsSection,
                  titleSection,
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
              backgroundColor: Color(0xff6b2978),
              child: Text('setting',style: new TextStyle(fontSize: 10),),


            )
        )
    );
  }
}