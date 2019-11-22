import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';


class Wildlife extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          new Text("Wildlife\nCenter",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Color(0xff6b2978),
                  fontFamily: 'Bitter'
              )),

          new Image.network(
            'https://images.unsplash.com/photo-1497752531616-c3afd9760a11?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
            width: 200,
            height: 200,
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

    //return new MaterialApp(
      //  home:
        return new Scaffold(
          appBar: AppBar(
            title: Text('Wildlife Center',
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


            children: <Widget>[
              titleSection,
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('Dane County Humane Society\'s Wildlife Center provides comfort and care to over 3,800 injured or orphaned wild animals every year with the goal of releasing healthy animals back to their natural habitats.',
                  style:new TextStyle(
                    color: Color(0xff6b2978),
                    fontSize: 20.0,
                    fontFamily: 'Bitter',
                    height: 1.5,
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ),
            /*
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('Be cautious about approaching any stray animal. Lost pets are often scared and may react defensively when being approached by a stranger.\nIf you have found a domesticated animal, check for any license tag or other identification so that you can attempt to reunite the lost pet with its owner.\nCall DCHS at (608) 838-0413 ext. 100 to report the found animal and see if there are any lost reports matching the animal’s description.',
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),


              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('Care for a stray at your home',
                  style:new TextStyle(
                    color: Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('If you prefer to hold onto a stray that you found, please call DCHS for tips on how to reunite the stray with its owner. Have the animal scanned at a local humane society or veterinary office for a microchip, place "found" posters in your neighborhood and create a listing on Craigslist.',
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),


              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('Bring a stray to DCHS',
                  style:new TextStyle(
                    color: Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('If you are not able to hold onto a stray that you found, call DCHS at (608) 838-0413 ext. 100 to schedule an appointment to bring the stray animal to the Main Shelter.',
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),


              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('Found a wild animal in need of help?',
                  style:new TextStyle(
                    color: Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('If it is a wild animal and you believe it is in need of assistance, please contact DCHS\'s Wildlife Center at (608) 287-3235 before intervening. Knowledgeable staff and volunteers are happy to talk you through the next steps and determine when help is truly needed.',
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),
              new GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Wildlife()),
                    );
                  },
                  child: new Container(
                    height: 45,
                    alignment: Alignment.center,
                    padding: new EdgeInsets.fromLTRB(10.0, 0.0, 1.0, 15.0),
                    color: Colors.white,
                    child: new Text("Learn more about DCHS's Wildlife Center",
                      style: new TextStyle(
                          fontSize: 19.0,
                          fontFamily: 'Bitter',
                          height: 1.4,
                          color: Colors.lightGreen
                      ),
                    ),
                  )
              ),


              new Container(
                padding: new EdgeInsets.fromLTRB(15.0, 15.0, 1.0, 1.0),
                child:new Text('Need help transporting the animal?',
                  style:new TextStyle(
                    color: Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('If it is an injured wild animal or if it is a domesticated animal that you are not comfortable transporting yourself, confine the animal and call Dane County dispatch at (608) 255-2345. They will dispatch an animal services officer to pick up the animal, but they can only come if the animal is confined. Confining can include securing the animal with a leash or putting the animal in your garage, under an inverted laundry basket (if it is very small or injured and will not escape) or in a live trap.',
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),


              new Container(
                padding: new EdgeInsets.fromLTRB(15.0, 15.0, 1.0, 1.0),
                child:new Text('Emergency care and other resources',
                  style:new TextStyle(
                    color:Colors.deepPurpleAccent,
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('If you have questions about stray animals or related animal control laws in your community, it is best to call your local police or sheriff\'s department to find out who handles animal control services in your jurisdiction. Each township, village, city and county has its own laws and methods of enforcement.\nIf you are in need of after hours emergency medical care for a stray animal, please contact University of Wisconsin Veterinary Care at their 24/7 Emergency Care number (608) 263-7600. While it is not required, it is recommended that you call prior to your arrival so that they can be prepared for the situation.',
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),


              new Container(
                padding: new EdgeInsets.fromLTRB(15.0, 15.0, 1.0, 1.0),
                child:new Text('Found a stray outside of Dane County?',
                  style:new TextStyle(
                    color:Colors.deepPurpleAccent,
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('Dane County Humane Society is the stray holding facility for animals of Dane County. If you find a stray animal outside of Dane County, you should call the stray holding facility or humane society in that county. This gives the animal the best chance at being reunited with its owner.\nIf you bring an out of county animal to DCHS, there is a \$100 fee per dog or cat (fees vary for other species) and an appointment is required. Dane County and its taxpayers currently pay DCHS for each stray we care for during its stray holding period. We do not receive payment to care for or hold strays brought to us from outside of Dane County. The out-of-county surcharge is the same as what we charge Dane County for stray animal care and holding and will helps offset the cost to care for and hold out-of-county strays. Please call DCHS at (608) 838-0413 ext. 100 if you need assistance locating resources in your county.',
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),
              */
            ],

          ),


          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            backgroundColor: Color(0xff6b2978),
          ),
    //    )
    ); //Widget with "Material design"

  }
}