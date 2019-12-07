import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/servicemenu/wildlife.dart';
import 'package:project/screens/servicemenu/functions/expandable_text.dart';
import 'package:project/screens/servicemenu/lostpet/lost_pet_db.dart';


class Found_stray extends StatefulWidget {

  @override
  _FoundState createState() => _FoundState();

}

class _FoundState extends State<Found_stray> {

  @override
  Widget build(BuildContext context) {

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          new Text("Found\na stray?",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color:Color(0xff6b2978),
                  fontFamily: 'Bitter'
              )),

          new Image.network(
            'https://www.giveshelter.org/assets/images/Articles/Inline_Stray.jpg',
            width: 200,
            height: 200,
          ),

        ],
      ),
    );

    //return new MaterialApp(

    //home:
        return new Scaffold(
          appBar: AppBar(
            title: Text('Found A Stray?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.white,
                fontFamily: 'Bitter',
              ),
            ),
            centerTitle: true,
            backgroundColor: Color(0xff96be04),
          ),
          body: new ListView(


            children: <Widget>[
              titleSection,
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('Thank you for your willingness to help a lost animal find its way home! \nHere\'s what to do if you find a stray animal.',
                  style:new TextStyle(
                    color:Color(0xff6b2978),
                    fontSize: 20.0,
                    fontFamily: 'Bitter',
                    height: 1.5,
                     // fontWeight: FontWeight.bold
                  ),
                ),
              ),
              ////// ExpandableText
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new ExpandableText(
                  text: 'Be cautious about approaching any stray animal. Lost pets are often scared and may react defensively when being approached by a stranger.\nIf you have found a domesticated animal, check for any license tag or other identification so that you can attempt to reunite the lost pet with its owner.\nCall DCHS at (608) 838-0413 ext. 100 to report the found animal and see if there are any lost reports matching the animal’s description.',
                  maxLines: 3, /////////////
                  expand: false, ///////////
                  style: new TextStyle(
                      color: Colors.grey[850],
                      fontSize: 18.0,
                      fontFamily: 'Bitter',
                      height: 1.4,
                  ),
                ),
              ),

              new FlatButton.icon(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Lost_pet_db(); //////// Lost_pet_db
                  }));
                },
                //padding: new EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 1.0),
                color: Color(0xffaa295d),
                icon: Icon(Icons.pets, color: Colors.white),
                label: Text(
                  'Lost Pet Database',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'Bitter',
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),

              new ExpansionTile(
                title: Text(
                  'Care for a stray at your home',
                  style: TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                    height: 1.4,
                  ),
                ),
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.all(15.0),
                    child: new Text(
                      'If you prefer to hold onto a stray that you found, please call DCHS for tips on how to reunite the stray with its owner. Have the animal scanned at a local humane society or veterinary office for a microchip, place "found" posters in your neighborhood and create a listing on Craigslist.',
                      style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 18.0,
                        fontFamily: 'Bitter',
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
                trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
              ),

/*
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('Care for a stray at your home',
                  style:new TextStyle(
                    color:Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              ////// ExpandableText
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new ExpandableText(
                  text: 'If you prefer to hold onto a stray that you found, please call DCHS for tips on how to reunite the stray with its owner. Have the animal scanned at a local humane society or veterinary office for a microchip, place "found" posters in your neighborhood and create a listing on Craigslist.',
                  maxLines: 3, /////////////
                  expand: false, ///////////
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),
*/

              new ExpansionTile(
                title: Text(
                  'Bring a stray to DCHS',
                  style: TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                    height: 1.4,
                  ),
                ),
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.all(15.0),
                    child: new Text(
                      'If you are not able to hold onto a stray that you found, call DCHS at (608) 838-0413 ext. 100 to schedule an appointment to bring the stray animal to the Main Shelter.',
                      style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 18.0,
                        fontFamily: 'Bitter',
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
                trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
              ),
/*
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('Bring a stray to DCHS',
                  style:new TextStyle(
                    color:Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              ////// ExpandableText
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new ExpandableText(
                  text: 'If you are not able to hold onto a stray that you found, call DCHS at (608) 838-0413 ext. 100 to schedule an appointment to bring the stray animal to the Main Shelter.',
                  maxLines: 3, /////////////
                  expand: false, ///////////
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),
*/

              new ExpansionTile(
                title: Text(
                  'Found a wild animal in need of help?',
                  style: TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                    height: 1.4,
                  ),
                ),
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.all(15.0),
                    child: new Text(
                      'If it is a wild animal and you believe it is in need of assistance, please contact DCHS\'s Wildlife Center at (608) 287-3235 before intervening. Knowledgeable staff and volunteers are happy to talk you through the next steps and determine when help is truly needed.',
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
                        padding: new EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
                        color: Colors.white,
                        child: new Text("Learn more about DCHS's Wildlife Center",
                          style: new TextStyle(
                            fontSize: 19.0,
                            fontFamily: 'Bitter',
                            height: 1.4,
                            color: Color(0xff96be04),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                  ),
                ],
                trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
              ),
/*
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('Found a wild animal in need of help?',
                  style:new TextStyle(
                    color:Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              ////// ExpandableText
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new ExpandableText(
                  text: 'If it is a wild animal and you believe it is in need of assistance, please contact DCHS\'s Wildlife Center at (608) 287-3235 before intervening. Knowledgeable staff and volunteers are happy to talk you through the next steps and determine when help is truly needed.',
                  maxLines: 3, /////////////
                  expand: false, ///////////
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
                  padding: new EdgeInsets.fromLTRB(10.0, 0.0, 1.0, 10.0),
                  color: Colors.white,
                  child: new Text("Learn more about DCHS's Wildlife Center",
                    style: new TextStyle(
                      fontSize: 19.0,
                      fontFamily: 'Bitter',
                      height: 1.4,
                      color: Color(0xff96be04),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ),
*/


              new ExpansionTile(
                title: Text(
                  'Need help transporting the animal?',
                  style: TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                    height: 1.4,
                  ),
                ),
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.all(15.0),
                    child: new Text(
                      'If it is an injured wild animal or if it is a domesticated animal that you are not comfortable transporting yourself, confine the animal and call Dane County dispatch at (608) 255-2345. They will dispatch an animal services officer to pick up the animal, but they can only come if the animal is confined. Confining can include securing the animal with a leash or putting the animal in your garage, under an inverted laundry basket (if it is very small or injured and will not escape) or in a live trap.',
                      style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 18.0,
                        fontFamily: 'Bitter',
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
                trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
              ),
/*
              new Container(
                padding: new EdgeInsets.fromLTRB(15.0, 15.0, 1.0, 1.0),
                child:new Text('Need help transporting the animal?',
                  style:new TextStyle(
                    color:Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              ////// ExpandableText
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new ExpandableText(
                  text: 'If it is an injured wild animal or if it is a domesticated animal that you are not comfortable transporting yourself, confine the animal and call Dane County dispatch at (608) 255-2345. They will dispatch an animal services officer to pick up the animal, but they can only come if the animal is confined. Confining can include securing the animal with a leash or putting the animal in your garage, under an inverted laundry basket (if it is very small or injured and will not escape) or in a live trap.',
                  maxLines: 3, /////////////
                  expand: false, ///////////
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),
*/

              new ExpansionTile(
                title: Text(
                  'Emergency care and other resources',
                  style: TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                    height: 1.4,
                  ),
                ),
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.all(15.0),
                    child: new Text(
                      'If you have questions about stray animals or related animal control laws in your community, it is best to call your local police or sheriff\'s department to find out who handles animal control services in your jurisdiction. Each township, village, city and county has its own laws and methods of enforcement.\nIf you are in need of after hours emergency medical care for a stray animal, please contact University of Wisconsin Veterinary Care at their 24/7 Emergency Care number (608) 263-7600. While it is not required, it is recommended that you call prior to your arrival so that they can be prepared for the situation.',
                      style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 18.0,
                        fontFamily: 'Bitter',
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
                trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
              ),

/*
              new Container(
                padding: new EdgeInsets.fromLTRB(15.0, 15.0, 1.0, 1.0),
                child:new Text('Emergency care and other resources',
                  style:new TextStyle(
                    color:Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              ////// ExpandableText
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new ExpandableText(
                  text: 'If you have questions about stray animals or related animal control laws in your community, it is best to call your local police or sheriff\'s department to find out who handles animal control services in your jurisdiction. Each township, village, city and county has its own laws and methods of enforcement.\nIf you are in need of after hours emergency medical care for a stray animal, please contact University of Wisconsin Veterinary Care at their 24/7 Emergency Care number (608) 263-7600. While it is not required, it is recommended that you call prior to your arrival so that they can be prepared for the situation.',
                  maxLines: 3, /////////////
                  expand: false, ///////////
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),
*/

              new ExpansionTile(
                title: Text(
                  'Found a stray outside of Dane County?',
                  style: TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                    height: 1.4,
                  ),
                ),
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.all(15.0),
                    child: new Text(
                      'Dane County Humane Society is the stray holding facility for animals of Dane County. If you find a stray animal outside of Dane County, you should call the stray holding facility or humane society in that county. This gives the animal the best chance at being reunited with its owner.\nIf you bring an out of county animal to DCHS, there is a \$100 fee per dog or cat (fees vary for other species) and an appointment is required. Dane County and its taxpayers currently pay DCHS for each stray we care for during its stray holding period. We do not receive payment to care for or hold strays brought to us from outside of Dane County. The out-of-county surcharge is the same as what we charge Dane County for stray animal care and holding and will helps offset the cost to care for and hold out-of-county strays. Please call DCHS at (608) 838-0413 ext. 100 if you need assistance locating resources in your county.',
                      style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 18.0,
                        fontFamily: 'Bitter',
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
                trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
              ),

/*
              new Container(
                padding: new EdgeInsets.fromLTRB(15.0, 15.0, 1.0, 1.0),
                child:new Text('Found a stray outside of Dane County?',
                  style:new TextStyle(
                    color:Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              ////// ExpandableText
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new ExpandableText(
                  text: 'Dane County Humane Society is the stray holding facility for animals of Dane County. If you find a stray animal outside of Dane County, you should call the stray holding facility or humane society in that county. This gives the animal the best chance at being reunited with its owner.\nIf you bring an out of county animal to DCHS, there is a \$100 fee per dog or cat (fees vary for other species) and an appointment is required. Dane County and its taxpayers currently pay DCHS for each stray we care for during its stray holding period. We do not receive payment to care for or hold strays brought to us from outside of Dane County. The out-of-county surcharge is the same as what we charge Dane County for stray animal care and holding and will helps offset the cost to care for and hold out-of-county strays. Please call DCHS at (608) 838-0413 ext. 100 if you need assistance locating resources in your county.',
                  maxLines: 3, /////////////
                  expand: false, ///////////
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),
*/

              new Container(
                padding: const EdgeInsets.all(30.0),
              )

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
            backgroundColor: Color(0xff96be04),
          ),
        ); //Widget with "Material design"

  }
}