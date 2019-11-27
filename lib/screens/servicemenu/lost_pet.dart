import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/servicemenu/expandable_text.dart';
import 'package:project/screens/servicemenu/microchip.dart';
import 'package:project/screens/servicemenu/lost_report.dart';
import 'package:project/screens/servicemenu//lostAnimal.dart';
import 'package:project/screens/servicemenu/lost_pet_db.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter_markdown/flutter_markdown.dart';


class Lost_pet extends StatefulWidget {

  @override
  _LostState createState() => _LostState();

}

class _LostState extends State<Lost_pet> {

  @override
  Widget build(BuildContext context) {

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          new Text("Lost a pet?",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color:Color(0xff6b2978),
                  fontFamily: 'Bitter'
              )),

          new Image.network(
            'https://i.cbc.ca/1.5077459.1553886010!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_780/pets.jpg',
            width: 200,
            height: 200,
          ),

        ],
      ),
    );

    _launchURL1() async {
      const url = 'https://www.giveshelter.org/assets/images/documents/Lost_Pets_Brochure_3-12-18.pdf';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    //return new MaterialApp(
        //home:
        return new Scaffold(
          appBar: AppBar(
            title: Text('Lost A Pet?',
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
                child:new Text('We are sorry to hear that you have lost your pet. These steps can help you locate your lost pet as quickly as possible.',
                  style:new TextStyle(
                    color:Color(0xff6b2978),
                    fontSize: 20.0,
                    fontFamily: 'Bitter',
                    height: 1.5,
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ),


              new ExpansionTile(
                title: Text(
                  'File a lost report',
                  style: TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                    height: 1.4,
                  ),
                ),
                children: <Widget>[
                  ////// ExpandableText
                  new Container(
                    padding: const EdgeInsets.all(15.0),
                    child:new ExpandableText(
                      text: 'Contact Dane County Humane Society at (608) 838-0413 to file a lost report for your pet. We will ask you for a complete description of your pet and gather information about where and when they went missing.\nCat colors can sometimes be difficult to describe but are very important in helping us to make a match. Learn more about how to accurately describe your cat\nEmail photos of your lost pet to lostandfound@giveshelter.org. Please enter “Find My Pet” in the subject line for us to receive your message. We will add these pictures to your lost report.\nIf you have previously reported your animal missing with DCHS and have been reunited, don\'t forget to call (608) 838-0413 or email to give us the happy news.',
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
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Lost_report(LostAnimal('', '', '', '','', 'Lost', '', '', '','N/A','N/A')); //////// Lost_report
                      }));
                    },
                    //padding: new EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 1.0),
                    color: Color(0xff96be04),
                    icon: Icon(Icons.search, color: Colors.white),
                    label: Text(
                      'Lost Report',
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
                ],
                trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
              ),

 /*             new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('File a lost report',
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
                  text: 'Contact Dane County Humane Society at (608) 838-0413 to file a lost report for your pet. We will ask you for a complete description of your pet and gather information about where and when they went missing.\nCat colors can sometimes be difficult to describe but are very important in helping us to make a match. Learn more about how to accurately describe your cat\nEmail photos of your lost pet to lostandfound@giveshelter.org. Please enter “Find My Pet” in the subject line for us to receive your message. We will add these pictures to your lost report.\nIf you have previously reported your animal missing with DCHS and have been reunited, don\'t forget to call (608) 838-0413 or email to give us the happy news.',
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Home(); //////// Lost_report
                  }));
                },
                //padding: new EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 1.0),
                color: Color(0xff96be04),
                icon: Icon(Icons.search),
                label: Text(
                  'Lost Report',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Bitter',
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
*/

              new ExpansionTile(
                title: Text(
                  'Check our lost pet database',
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
                    child: new ExpandableText(
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
                  new FlatButton.icon(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Lost_pet_db(); //////// Lost_pet_db
                      }));
                    },
                    //padding: new EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 1.0),
                    color: Color(0xff96be04),
                    icon: Icon(Icons.search, color: Colors.white),
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
                ],
                trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
              ),
/*
              new Container(
                padding: const EdgeInsets.all(15.0),
                child:new Text('Check our lost pet database',
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
                  'Come to DCHS',
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
                      'Come to the Main Shelter at least once every 4 days to look for your lost pet in person. Stray animals brought to DCHS must be held for 4 full days according to state law. If you come at least once every 4 days, you have the best chance to find your pet if they have been brought here. It is sometimes difficult to get accurate pictures and descriptions updated online and nobody knows your lost pet better than you! Lost reports will be kept 30 days after your last walk thru at DCHS so be sure to check in at the front desk.',
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
                child:new Text('Come to DCHS',
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
*/

              new ExpansionTile(
                title: Text(
                  'Other helpful information',
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
                        height: 55,
                        //alignment: Alignment.center,
                        padding: new EdgeInsets.fromLTRB(15.0, 00.0, 15.0, 0.0),
                        color: Colors.white,
                        child: new Text("See our Lost Pet Brochure for other helpful hints on how to find your lost pet",
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
                  new Container(
                    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
                    child: new Text(
                      '• Post your lost pet on Craigslist under Community and Lost & Found.\n• Place a free ad in the Wisconsin State Journal under Buy & Sell, Community, Announcements, Lost Announcements. You can also call (608) 252-6363 to place an ad.\n• Post flyers in your neighborhood.\n• Call Madison\'s emergency care facilities:',
                      style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 18.0,
                        fontFamily: 'Bitter',
                        height: 1.4,
                      ),
                    ),
                  ),
                  new Container(
                    padding: const EdgeInsets.fromLTRB(50.0, 0.0, 15.0, 0.0),
                    child: new Text(
                      '• Madison Veterinary Specialists (608) 274-7772\n• Veterinary Emergency Service (608) 222-2455 East and (608) 831-1101 West\n• UW Veterinary Care (608) 263-7600',
                      style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 18.0,
                        fontFamily: 'Bitter',
                        height: 1.4,
                      ),
                    ),
                  ),
                  new Container(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    child: new Text(
                      '• More tips and places to list our lost pet:\n      • Lost Pet USA\n      • Lost Dogs of Wisconsin\n      • Missing Pet Partnership\n      • Lost Dog Search\n      • Cats in the Bag',
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
                child:new Text('Other helpful information',
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
                  'Protect your pet',
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
                      'In addition to keeping a collar with identification tags on your pet at all times, microchipping is an effective form of permanent identification. It can be used in any kind of animal at any age and will last an animal\'s lifetime. DCHS offers collars and identification tags for sale in our Adoption Center as well as daily walk-in microchipping services during all open hours.',
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
                          MaterialPageRoute(builder: (context) => Microchip()),
                        );
                      },
                      child: new Container(
                        height: 45,
                        alignment: Alignment.center,
                        padding: new EdgeInsets.fromLTRB(10.0, 0.0, 1.0, 10.0),
                        color: Colors.white,
                        child: new Text("Learn more about microchipping",
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
                padding: new EdgeInsets.fromLTRB(15.0, 15.0, 1.0, 1.0),
                child:new Text('Protect your pet',
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
                  text: 'In addition to keeping a collar with identification tags on your pet at all times, microchipping is an effective form of permanent identification. It can be used in any kind of animal at any age and will last an animal\'s lifetime. DCHS offers collars and identification tags for sale in our Adoption Center as well as daily walk-in microchipping services during all open hours.',
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
            backgroundColor: Color(0xffaa295d),
          ),
        ); //Widget with "Material design"

  }
}