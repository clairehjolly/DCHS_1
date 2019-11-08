import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';


class ServiceMenu extends StatelessWidget {
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
      }
    }

    Widget threeButtonsSection = new Container(

      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          //build in a separated function
          buildButton(Icons.home, "Home",1),
          buildButton(Icons.pets, "Found a stray",1),
          buildButton(Icons.info_outline, "About DCHS",1),

        ],
      ),
    );

    Widget threeButtonsSection1 = new Container(

      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: <Widget>[
          //build in a separated function
          buildButton(Icons.favorite, "Adopt",1),
          buildButton(Icons.navigation, "Rehome a pet",1),
          buildButton(Icons.local_hospital, "Wildlife Center",1),
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
          buildButton(Icons.sd_storage, "Microchip",1),
          buildButton(Icons.search, "Lost a pet",1),
          buildButton(Icons.school, "Dog training class",1),
        ],
      ),
    );

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          new Text("Our \nServices",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color:Colors.deepPurpleAccent,
                  fontFamily: 'Bitter'
              )),

          new Image.network(
            'https://storage.googleapis.com/petbacker/images/blog/2017/dog-and-cat-cover.jpg',
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
              title: Text('Our Services',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.white,
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
                threeButtonsSection2,
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
                SizedBox(height: 8.0),
                new Container(
                  padding: const EdgeInsets.all(15.0),
                  child: new Text("For nearly 100 years, DCHS has provided services for our community, helping people help animals. Whether you are looking to bring a new pet into your family, searching for your lost pet, found a wild animal in need of assistance or have made the difficult decision to surrender your pet, DCHS is here to help.",
                    style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 16.0,
                        fontFamily: 'Bitter'
                    ),
                  ),
                )
              ],
            ),

        ));//Widget with "Material design"

  }
}