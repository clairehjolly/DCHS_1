import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:project/screens/home/outreach.dart';
import 'package:project/screens/servicemenu/expandable_text.dart';

class About_dchs extends StatefulWidget {

  @override
  _AboutState createState() => _AboutState();

}

class _AboutState extends State<About_dchs> {

  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
//      padding: const EdgeInsets.all(10.0), //Top, Right, Bottom, Left
      child: new Column(
//        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          Container(
            padding: const EdgeInsets.all(10.0), //Top, Right, Bottom, Left
            child:          new Text("About DCHS",
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Color(0xff6b2978),
                    fontFamily: 'SourceSansPro'
                )),
          ),

          Container(
              padding: const EdgeInsets.only(bottom:10.0), //Top, Right, Bottom, Left
              child:          new Image.asset('img/dchsLocation.png'),

          ),

        ],
      ),
    );

    _launchURL1() async {
      const url = 'https://www.giveshelter.org/about-dchs/locations-hours';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    _launchURL2() async {
      const url = 'https://www.giveshelter.org/about-dchs/mission-and-values';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    _launchURL3() async {
      const url = 'https://www.giveshelter.org/about-dchs/reports';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch \$url';
      }
    }

    Widget buildButton(IconData icon, String buttonTitle, int i) {
      final Color tintColor = Color(0xff96be04);
      switch (i) {
        case 1:
          return new Column(
            children: <Widget>[
              new Icon(icon, color: tintColor),
              FlatButton(
                child: new Text(
                  buttonTitle, style: new TextStyle(fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: tintColor,
                    fontFamily: 'SourceSansPro'),),

                onPressed: _launchURL1,

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
                    fontWeight: FontWeight.w600,
                    color: tintColor,
                    fontFamily: 'SourceSansPro'),),

                onPressed: _launchURL2,

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
                    fontWeight: FontWeight.w600,
                    color: tintColor,
                    fontFamily: 'SourceSansPro'),),

                onPressed: _launchURL3,

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
          buildButton(Icons.label_important, "Mission\n& Values", 2),
          buildButton(Icons.insert_chart, "Publications\n& Finances", 3),

        ],
      ),
    );

   // return new MaterialApp(
     //   home:
        return new Scaffold(
          appBar: AppBar(
            title: Text('About DCHS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.white,
                fontFamily: 'SourceSansPro',
              ),
            ),
            centerTitle: true,

            backgroundColor: Color(0xffaa295d),
          ),
          body: new ListView(


            children: <Widget>[
              titleSection,
              threeButtonsSection,

              new Container(
                padding: const EdgeInsets.all(15.0),
                child: new Text(
                  'Dane County Humane Society provides refuge, healing and new beginnings to over 9,000 companion animals, exotic species, farm animals and injured or orphaned wild animals every year.',
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSansPro',
                    height: 1.5,
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ),
              ////// ExpandableText
              new Container(
                padding: const EdgeInsets.all(15.0),
                child: new ExpandableText(
                  text: 'DCHS is a private, non-profit, community-supported organization and is not affiliated with any government agency or national animal welfare organization. We are an open admission shelter accepting all animals that need assistance regardless of age, health status or temperament. DCHS has an adoption guarantee, meaning all healthy or treatable animals can stay at DCHS as long as it takes to find a loving home.\nAs one of the nation\'s leading animal welfare organizations, DCHS offers humane education programs, community-based care for pets, foster care for animals for victims of domestic abuse, a pet food pantry, dog training classes, wildlife rehabilitation and much more. Our volunteers and professionals come together every day in the spirit of Helping People Help Animals, and together create a culture of compassion, empathy, integrity and accountability.',
                  maxLines: 3, /////////////
                  expand: false, ///////////
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'SourceSansPro',
                    height: 1.4,
                  ),
                ),
              ),


              new ExpansionTile(
                title: Text(
                  'Our History',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
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
                      'DCHS was founded in 1921 by Ida Kittleson, wife of Madison Mayor Isaac Milo Kittleson. Ida housed lost and abandoned animals in the basement of her home or in the homes of volunteers. In 1965, a permanent shelter was built on Pennsylvania Avenue in Madison. Animals were sheltered in that facility for almost 50 years until the current shelter was built in 2000 on Voges Road in Madison. In 2002, Dane County Humane Society\'s Wildlife Center (formerly known as Four Lakes Wildlife Center) began taking in ill, injured or orphaned wildlife from throughout Southern Wisconsin.\nThe DCHS Campus is located on 29 beautiful acres in Southeast Madison and includes the DCHS Main Shelter building with adoptable and stray animal housing, adoption center and retail store, animal medical services clinic, humane education facilities and administrative offices. A horse and livestock barn, wildlife rehabilitation center and the Maddie\'s Felines in Treatment Center are also located on the DCHS Campus.\nDCHS is the second largest shelter in Wisconsin, caring for over 5,000 companion animals and 4,000 wild animals every year. Over 80 staff members and 800 dedicated volunteers provide comfort and care to these animals in need every day.',
                      style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 18.0,
                        fontFamily: 'SourceSansPro',
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
                trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
              ),


/*
              new Container(
                padding: const EdgeInsets.all(15.0),
                child: new Text('Our History',
                  style: new TextStyle(
                    color: Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              ////// ExpandableText
              new Container(
                padding: const EdgeInsets.all(15.0),
                child: new ExpandableText(
                  text: 'DCHS was founded in 1921 by Ida Kittleson, wife of Madison Mayor Isaac Milo Kittleson. Ida housed lost and abandoned animals in the basement of her home or in the homes of volunteers. In 1965, a permanent shelter was built on Pennsylvania Avenue in Madison. Animals were sheltered in that facility for almost 50 years until the current shelter was built in 2000 on Voges Road in Madison. In 2002, Dane County Humane Society\'s Wildlife Center (formerly known as Four Lakes Wildlife Center) began taking in ill, injured or orphaned wildlife from throughout Southern Wisconsin.\nThe DCHS Campus is located on 29 beautiful acres in Southeast Madison and includes the DCHS Main Shelter building with adoptable and stray animal housing, adoption center and retail store, animal medical services clinic, humane education facilities and administrative offices. A horse and livestock barn, wildlife rehabilitation center and the Maddie\'s Felines in Treatment Center are also located on the DCHS Campus.\nDCHS is the second largest shelter in Wisconsin, caring for over 5,000 companion animals and 4,000 wild animals every year. Over 80 staff members and 800 dedicated volunteers provide comfort and care to these animals in need every day.',
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
                  'Adoption Guarantee',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
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
                      'DCHS guarantees that all healthy companion animals or those with treatable or manageable medical and/or behavioral conditions will find new homes. These animals can stay at DCHS as long as it takes to find their new family. DCHS has been 100% Adoption Guarantee since April 2012.',
                      style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 18.0,
                        fontFamily: 'SourceSansPro',
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
                trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
              ),
/*
              new Container(
                padding: const EdgeInsets.all(15.0),
                child: new Text('Adoption Guarantee',
                  style: new TextStyle(
                    color: Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              ////// ExpandableText
              new Container(
                padding: const EdgeInsets.all(15.0),
                child: new ExpandableText(
                  text: 'DCHS guarantees that all healthy companion animals or those with treatable or manageable medical and/or behavioral conditions will find new homes. These animals can stay at DCHS as long as it takes to find their new family. DCHS has been 100% Adoption Guarantee since April 2012.',
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
                  'Stray Holding Facility',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
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
                      'DCHS serves as the stray holding facility for Dane County and every year we reunite over 700 companion animals with their families.\nDCHS assists Dane County and the City of Madison authorities when they pursue animal seizures due to suspected abuse and neglect. DCHS is a private, non-profit organization and has no legal authority to investigate animal abuse or seize animals. The shelter maintains contractual relationships to serve as a holding facility for stray and impounded animals, including those seized by local authorities pursuant to Chapter 173 of the Wisconsin Statutes. Decisions on whether to seize an animal or to keep a seized animal at DCHS are made by law enforcement, statutorily-authorized humane officers, and representatives of Dane County Animal Control, in conjunction with local prosecutors and the courts.',
                      style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 18.0,
                        fontFamily: 'SourceSansPro',
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
                trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
              ),
/*
              new Container(
                padding: const EdgeInsets.all(15.0),
                child: new Text('Stray Holding Facility',
                  style: new TextStyle(
                    color: Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              ////// ExpandableText
              new Container(
                padding: const EdgeInsets.all(15.0),
                child: new ExpandableText(
                  text: 'DCHS serves as the stray holding facility for Dane County and every year we reunite over 700 companion animals with their families.\nDCHS assists Dane County and the City of Madison authorities when they pursue animal seizures due to suspected abuse and neglect. DCHS is a private, non-profit organization and has no legal authority to investigate animal abuse or seize animals. The shelter maintains contractual relationships to serve as a holding facility for stray and impounded animals, including those seized by local authorities pursuant to Chapter 173 of the Wisconsin Statutes. Decisions on whether to seize an animal or to keep a seized animal at DCHS are made by law enforcement, statutorily-authorized humane officers, and representatives of Dane County Animal Control, in conjunction with local prosecutors and the courts.',
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
                  'DCHS Funding',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
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
                      'DCHS is a private, non-profit organization and not affiliated with any government agency or national animal welfare organization. The majority of DCHS funding comes from the generosity of our community through individual donations, bequests, corporate support, grants and fundraising efforts. Program services and fees provide additional funding.\nSupport from individuals and organizations allow us the flexibility to apply your gifts immediately for daily shelter and community outreach operations, helps us meet unplanned and unmet needs in our community and sparks innovative best practices to serve as a model for animal welfare organizations nationwide.\nDCHS will not trade, share or sell a donor\'s personal information with anyone else, nor send donor mailings on behalf of other organizations.',
                      style: new TextStyle(
                        color: Colors.grey[850],
                        fontSize: 18.0,
                        fontFamily: 'SourceSansPro',
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
                trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
              ),
/*
              new Container(
                padding: new EdgeInsets.fromLTRB(15.0, 15.0, 1.0, 1.0),
                child: new Text('DCHS Funding',
                  style: new TextStyle(
                    color: Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter',
                  ),
                ),
              ),
              ////// ExpandableText
              new Container(
                padding: const EdgeInsets.all(15.0),
                child: new ExpandableText(
                  text: 'DCHS is a private, non-profit organization and not affiliated with any government agency or national animal welfare organization. The majority of DCHS funding comes from the generosity of our community through individual donations, bequests, corporate support, grants and fundraising efforts. Program services and fees provide additional funding.\nSupport from individuals and organizations allow us the flexibility to apply your gifts immediately for daily shelter and community outreach operations, helps us meet unplanned and unmet needs in our community and sparks innovative best practices to serve as a model for animal welfare organizations nationwide.\nDCHS will not trade, share or sell a donor\'s personal information with anyone else, nor send donor mailings on behalf of other organizations.',
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
                padding: new EdgeInsets.fromLTRB(15.0, 10.0, 1.0, 5.0),
                child: new Text('Join Us',
                  style: new TextStyle(
                    color: Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    height: 1.4,
                  ),
                ),
              ),
              new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Outreach()),   ////////
                    );
                  },
                  child: new Container(
                    height: 45,
                    alignment: Alignment.center,
                    padding: new EdgeInsets.fromLTRB(10.0, 00.0, 10.0, 0.0),
                    color: Colors.white,
                    child: new Text("Learn more about outreach opportunities",
                      style: new TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSansPro',
                          height: 1.4,
                          color: Color(0xff96be04),
                          decoration: TextDecoration.underline,
                      ),
                    ),
                  )
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
            backgroundColor: Color(0xffaa295d),
          ),
        ); //Widget with "Material design"

 // }


}

}