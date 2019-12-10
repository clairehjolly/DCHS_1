import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:project/screens/home/outreach.dart';
import 'package:project/screens/servicemenu/functions/expandable_text.dart';

class Education extends StatefulWidget {

  @override
  _EducationState createState() => _EducationState();

}

class _EducationState extends State<Education> {

  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0), //Top, Right, Bottom, Left
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          new Text("Education",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Color(0xff6b2978),
                  fontFamily: 'Bitter'
              )),

          new Image.network(
            'https://www.giveshelter.org/assets/images/_1200x630_crop_center-center_82_none/DCHS-Logo_Header_Purple_FB.jpg',
            width: 200,
            height: 200,
          ),

        ],
      ),
    );

    _launchURL1() async {
      const url = 'https://www.giveshelter.org/community-outreach/camp-pawprint';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    _launchURL2() async {
      const url = 'https://www.giveshelter.org/community-outreach/tours-field-trips-presentations';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    _launchURL3() async {
      const url = 'https://www.giveshelter.org/community-outreach/humane-heroes-club';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    _launchURL4() async {
      const url = 'https://www.giveshelter.org/community-outreach/scout-workshops';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    _launchURL5() async {
      const url = 'https://www.giveshelter.org/community-outreach/birthday-parties';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    return new Scaffold(
      appBar: AppBar(
        title: Text('Education',
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
            child: new Text(
              'DCHS offers a variety of educational programs for all ages. These programs provide one-of-a-kind experiences that teach not only about DCHS services but how to help make our community a better place for both people and animals.',
              style: new TextStyle(
                color: Color(0xff6b2978),
                fontSize: 20.0,
                fontFamily: 'Bitter',
                height: 1.5,
                // fontWeight: FontWeight.bold
              ),
            ),
          ),

          new ExpansionTile(
            title: Text(
              'Camp Pawprint',
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
                  'DCHS offers week-long day camps during summer as well as day camps throughout the school year. Kids ages 7-12 enjoy meeting a variety of animals, animal-related lessons and having fun with other animal lovers!',
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),
              new GestureDetector(
                  onTap: _launchURL1,
                  child: new Container(
                    height: 45,
                    alignment: Alignment.center,
                    padding: new EdgeInsets.fromLTRB(10.0, 00.0, 10.0, 10.0),
                    color: Colors.white,
                    child: new Text("Learn more",
                      style: new TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'Bitter',
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        color: Color(0xffaa295d),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
              ),
            ],
            trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
          ),

          new ExpansionTile(
            title: Text(
              'Tour, Presentation, Field Trip',
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
                  'Whether you choose to visit the Main Shelter or have our Humane Educator present at your school, business or organization, you\'ll learn all about DCHS and great information about how to help animals.',
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),
              new GestureDetector(
                  onTap: _launchURL2,
                  child: new Container(
                    height: 45,
                    alignment: Alignment.center,
                    padding: new EdgeInsets.fromLTRB(10.0, 00.0, 10.0, 10.0),
                    color: Colors.white,
                    child: new Text("Learn more",
                      style: new TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'Bitter',
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        color: Color(0xffaa295d),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
              ),
            ],
            trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
          ),

          new ExpansionTile(
            title: Text(
              'Humane Heroes Club',
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
                  'Join DCHS\'s youth volunteer club where members ages 7-15 can meet with a variety of animal visitors and complete service projects to help animals in need.',
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),
              new GestureDetector(
                  onTap: _launchURL3,
                  child: new Container(
                    height: 45,
                    alignment: Alignment.center,
                    padding: new EdgeInsets.fromLTRB(10.0, 00.0, 10.0, 10.0),
                    color: Colors.white,
                    child: new Text("Learn more",
                      style: new TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'Bitter',
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        color: Color(0xffaa295d),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
              ),
            ],
            trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
          ),

          new ExpansionTile(
            title: Text(
              'Scout Workshops',
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
                  'Earn an animal-related badge while helping animals in need! Workshops include a tour of the Main Shelter, a chance to meet our education animals and fun activities to complete badge requirements.',
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),
              new GestureDetector(
                  onTap: _launchURL4,
                  child: new Container(
                    height: 45,
                    alignment: Alignment.center,
                    padding: new EdgeInsets.fromLTRB(10.0, 00.0, 10.0, 10.0),
                    color: Colors.white,
                    child: new Text("Learn more",
                      style: new TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'Bitter',
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        color: Color(0xffaa295d),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
              ),
            ],
            trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
          ),

          new ExpansionTile(
            title: Text(
              'Birthday Parties',
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
                  'Host your birthday party at DCHS\'s Main Shelter and have a blast while helping support the comfort and care of animals in need!',
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),
              new GestureDetector(
                  onTap: _launchURL5,
                  child: new Container(
                    height: 45,
                    alignment: Alignment.center,
                    padding: new EdgeInsets.fromLTRB(10.0, 00.0, 10.0, 10.0),
                    color: Colors.white,
                    child: new Text("Learn more",
                      style: new TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'Bitter',
                        fontWeight: FontWeight.bold,
                        height: 1.4,
                        color: Color(0xffaa295d),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
              ),
            ],
            trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
          ),

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
    );


  }

}