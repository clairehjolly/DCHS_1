import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:project/screens/home/outreach.dart';

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


    _launchURL1() async {
      const url = 'https://www.giveshelter.org/wildlife-center/injured-or-ill-wild-animal';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    _launchURL2() async {
      const url = 'https://www.giveshelter.org/wildlife-center/orphaned-wild-animal';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    _launchURL3() async {
      const url = 'https://www.giveshelter.org/assets/documents/Nuisance_Wildlife.pdf';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    _launchURL4() async {
      const url = 'https://www.giveshelter.org/about-dchs/locations-hours';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    _launchURL5() async {
      const url = 'https://www.giveshelter.org/wildlife-center/wildlife-faqs';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    Widget buildButton(IconData icon, String buttonTitle, int i) {
      final Color tintColor = Color(0xffffc50d);
      switch (i) {
        case 1:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: tintColor,
                    fontFamily: 'Bitter'),),

                onPressed: _launchURL4,

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
                    fontWeight: FontWeight.w600,
                    color: tintColor,
                    fontFamily: 'Bitter'),),

                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Outreach();
                  }));
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
                    fontWeight: FontWeight.w600,
                    color: tintColor,
                    fontFamily: 'Bitter'),),

                onPressed: _launchURL5,

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
          buildButton(Icons.explore, "Locations\n& Hours", 1),
          buildButton(Icons.mood, "Ways You \nCan Help", 2),
          buildButton(Icons.help, "FAQ", 3),

        ],
      ),
    );

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

        backgroundColor: Color(0xff96be04),
      ),
      body: new ListView(


        children: <Widget>[
          titleSection,
          threeButtonsSection,

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

          new FlatButton.icon(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                //////// Donate page!!!!!!!!!!!!!!
                return Home();
              }));
            },
            //padding: new EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 1.0),
            color: Color(0xffaa295d),
            icon: Icon(Icons.favorite_border, color: Colors.white),
            label: Text(
              'Donate Now',
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
              'Found an Injured or Ill Wild Animal?',
              style: TextStyle(
                fontFamily: 'Bitter',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff6b2978),
                height: 1.4,
              ),
            ),
            children: <Widget>[
              new GestureDetector(
                  onTap: _launchURL1,
                  child: new Container(
                    //height: 40,
                    //alignment: Alignment.center,
                    padding: new EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    color: Colors.white,
                    child: new Text("Find out what to do",
                      style: new TextStyle(
                        fontSize: 20.0,
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

          new ExpansionTile(
            title: Text(
              'Found an Orphaned Wild Animal?',
              style: TextStyle(
                fontFamily: 'Bitter',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff6b2978),
                height: 1.4,
              ),
            ),
            children: <Widget>[
              new GestureDetector(
                  onTap: _launchURL2,
                  child: new Container(
                    //height: 40,
                    //alignment: Alignment.center,
                    padding: new EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    color: Colors.white,
                    child: new Text("Find out what to do",
                      style: new TextStyle(
                        fontSize: 20.0,
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

          new ExpansionTile(
            title: Text(
              'Our History',
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
                  'Dane County Humane Society\'s Wildlife Center, formerly known as Four Lakes Wildlife Center, was founded in 2002 by David Madden, former animal care director at DCHS, and Patrick Comfert, a local licensed wildlife rehabilitator. In the inaugural season, the fledgling wildlife program received over 100 patients.\nAfter the first summer’s influx of wildlife, it was clear there was a need for wildlife rehabilitation in our community and that more help would be needed to provide the care for the increasing number patients. The program began to recruit and train interested community members to care for the wildlife in our care, and to this day, volunteers and interns provide the majority of the basic daily animal care.\nSince its inception, the program has had over 30,000 animals pass through its doors. With the support of the community, the wildlife program continues to grow and now serves more than 3,800 animals every year.',
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

          new ExpansionTile(
            title: Text(
              'Coexisting with Wildlife',
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
                  'As humans and wild animals increasingly live side by side in our urban environments, we have seen wild patient numbers increase as well as strategies to make peace with nuisance wildlife. It is common for many kinds of wild animals, especially raccoons, woodchucks and squirrels to try to make their home in or under a man-made structure. Please do not live trap to catch and relocate a nuisance animal.',
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
                    //height: 40,
                    //alignment: Alignment.center,
                    padding: new EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    color: Colors.white,
                    child: new Text("Learn more about humane exclusion techniques",
                      style: new TextStyle(
                        fontSize: 18.0,
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

          new ExpansionTile(
            title: Text(
              'What species are accepted at the Wildlife Center?',
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
                  'We work with more than 100 different species of animals at the Wildlife Center including all species of native birds, reptiles and amphibians, bats and most small mammals. If you are not sure if we will accept a species, please call us at (608) 287-3235 or (608) 838-0413 ext. 151.',
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

          new ExpansionTile(
            title: Text(
              'What species are NOT accepted at the Wildlife Center?',
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
                  'We do not work with deer, raccoons, house sparrows, European starlings, rock pigeons, mice or skunks. If you have found an animal that we do not work with, please call the DNR Service Center at (888) 936-7463 for a referral to a rehabilitator that can help you.',
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

          new ExpansionTile(
            title: Text(
              'What is the cost of care?',
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
                  'While there is no fee to bring an animal in, DCHS\'s Wildlife Center receives no federal or state funding. The Wildlife Center relies on community support to fund our operations. The average cost to care for each animal admitted to the Wildlife Center is \$100, and donations to help us continue the care you started are very much appreciated. Donations can be made here or are accepted at the time of admission.',
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
      //    )
    ); //Widget with "Material design"

  }
}