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
                          fontSize: 18.0,
                          color: Color(0xff6b2978),
                          fontFamily: 'Bitter'
                      )),
                ),
                //Need to add space below this Text ?
                new Text("For nearly 100 years, DCHS has provided services for our community, helping people help animals. Whether you are looking to bring a new pet into your family, searching for your lost pet, found a wild animal in need of assistance, have made the difficult decision to surrender your pet or are looking for educational opportunities, DCHS is here to help.",
                  style: new TextStyle(
                      color: Colors.grey[850],
                      fontSize: 16.0,
                      fontFamily: 'Bitter'
                  ),
                ),
              ],
            ),
          ),
          new Icon(Icons.favorite, color: Colors.red),
          new Text(" 100", style: new TextStyle(fontSize: 16.0),),
        ],
      ),
    );
    /* Widget buildButton(IconData icon, String buttonTitle) {
      final Color tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon(icon, color: tintColor),
          new Container(
            margin: const EdgeInsets.only(top: 5.0),
            child: new Text(buttonTitle, style: new TextStyle(fontSize: 16.0,
                fontWeight: FontWeight.w600, color: tintColor),),
          )
        ],
      );
    }

    */

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
                    MaterialPageRoute(builder: (context) => Outreach()),
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
                    MaterialPageRoute(builder: (context) => Calendar()),
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

    Widget fourButtonsSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: <Widget>[
          //build in a separated function
          buildButton(Icons.supervised_user_circle, "Admin",1),
          buildButton(Icons.scatter_plot, "Service",2),
          buildButton(Icons.search, "Outreach",3),
          buildButton(Icons.calendar_today, "Calendar",4),
          //buildButton(Icons.settings, "Setting",5),
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
            body: new ListView(

              shrinkWrap: true,
              padding: const EdgeInsets.all(5.0),

              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new ConstrainedBox(
                      constraints: new BoxConstraints(
                        minHeight: 35.0,
                        maxHeight: 130.0,
                      ),
                      child: new Image.network(
                        'https://imgix.bustle.com/uploads/image/2018/10/26/c50ef3cd-c402-4543-a320-945b5535325e-fotolia_191159298_subscription_monthly_m.jpg?w=970&h=546&fit=crop&crop=faces&auto=format&q=70',
                        height: 160,
                        width:160, // fit: BoxFit.cover,
                      ),
                    ),
                    new ConstrainedBox(
                      constraints: new BoxConstraints(
                        minHeight: 35.0,
                        maxHeight: 130.0,
                      ),
                      child:new Image.network(
                        'https://www.vetwest.com.au/sites/default/files/styles/large/public/images/article/pug-nose.jpg', //scale: 0.5,
                        height: 160,
                        width:160,              //idth: 130,
                        //eight: 130,
                        //alignment: Alignment.centerRight,

                      ),
                    ),
                  ],
                ),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new ConstrainedBox(
                      constraints: new BoxConstraints(
                        minHeight: 35.0,
                        maxHeight: 130.0,
                      ),
                      child: new Image.network(
                        'https://www.sciencemag.org/sites/default/files/styles/inline__450w__no_aspect/public/pearl_16x9.jpg?itok=Tq-dVV3X',
                        height: 160,
                        width:160, // fit: BoxFit.cover,
                      ),
                    ),
                    new ConstrainedBox(
                      constraints: new BoxConstraints(
                        minHeight: 35.0,
                        maxHeight: 130.0,
                      ),
                      child:new Image.network(
                        'https://image.cnbcfm.com/api/v1/image/105992231-1561667465295gettyimages-521697453.jpeg?v=1561667497&w=678&h=381', //scale: 0.5,
                        height: 160,
                        width:160,              //idth: 130,
                        //eight: 130,
                        //alignment: Alignment.centerRight,

                      ),
                    ),
                  ],






                ),
                //You can add more widget bellow


                //SizedBox(height: 5),
                fourButtonsSection,
                titleSection,

              ],
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
    );//Widget with "Material design"


  }
}

