import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/outreach/volunteer/volunteerPositionList/ACC.dart';
import 'package:project/screens/outreach/volunteer/volunteerPositionList/BPAT.dart';
import 'package:project/screens/outreach/volunteer/volunteerPositionList/BTS.dart';
import 'package:project/screens/outreach/volunteer/volunteerPositionList/CV.dart';
import 'package:project/screens/outreach/volunteer/volunteerPositionList/F.dart';
import 'package:project/screens/outreach/volunteer/volunteerPositionList/GV.dart';
import 'package:project/screens/outreach/volunteer/volunteerPositionList/OE.dart';
import 'package:project/screens/outreach/volunteer/volunteerPositionList/SE.dart';
import 'package:project/screens/outreach/volunteer/volunteerPositionList/SO.dart';
import 'package:project/screens/outreach/volunteer/volunteerPositionList/VV.dart';
import 'package:project/screens/outreach/volunteer/volunteerPositionList/WC.dart';
import 'package:project/screens/outreach/volunteer/volunteerPositionList/Y.dart';

class VolunteerPositions extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(

          child:Text(
            'Volunteer Positions',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 25.0,
            ),
          ),
        ),
        backgroundColor: Color(0xff96be04),

      ),


      resizeToAvoidBottomInset: false,

      body: new SingleChildScrollView(
          child: new Column(
            children: <Widget>[
              ListTile(
                leading: Image.asset('img/bringingPeopleAndAnimalsTogether.png'),
                title: Text(
                  'Bringing People and Animals Together',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                subtitle: Text(
                  'There is a certain magic when people connect with animals in need. '
                      'Help bring animals and people together by volunteering in our '
                      'Adoption Center, writing profiles for adoptable animals and helping '
                      'reunite lost pets with their families.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 12.5,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    debugPrint("BPAT Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return BPAT();
                    }));
                  },
                  icon: Icon(Icons.keyboard_arrow_right, color: Color(0xff96be04)),
                ),

              ),

              ListTile(
                leading: Image.asset('img/ACC.png'),
                title: Text(
                  'Animal Care and Comfort',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                subtitle: Text(
                  'Provide comfort and care to the thousands of animals in need that come to DCHS '
                      'every year. Volunteer in these hands-on positions which provide animals with '
                      'clean surroundings and enriching activities.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 12.5,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    debugPrint("ACC Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return ACC();
                    }));
                  },
                  icon: Icon(Icons.keyboard_arrow_right, color: Color(0xff96be04)),
                ),
              ),

              ListTile(
                leading: Image.asset('img/BTS.png'),
                title: Text(
                  'Behind the Scenes',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                subtitle: Text(
                  'It takes a lot of coordination and fundraising in order to support the '
                      'care of thousands of animals every year. Be a part of the behind-the-scenes '
                      'work that gives DCHS the ability to help so many animals in need.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 12.5,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    debugPrint("BTS Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return BTS();
                    }));
                  },
                  icon: Icon(Icons.keyboard_arrow_right, color: Color(0xff96be04)),
                ),
              ),

              ListTile(
                leading: Image.asset('img/OE.png'),
                title: Text(
                  'Outreach & Education',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                subtitle: Text(
                  'Help provide one-of-a-kind experiences that teach the public about the shelter '
                      'and how they can make our community a better place for both people and animals.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 12.5,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    debugPrint("OE Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return OE();
                    }));
                  },
                  icon: Icon(Icons.keyboard_arrow_right, color: Color(0xff96be04)),
                ),
              ),

              ListTile(
                leading: Image.asset('img/WC.png'),
                title: Text(
                  'Wildlife Center',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                subtitle: Text(
                  'Help take in and provide care for the over 3,800 injured or orphaned wild animals that come to DCHS'
                      's Wildlife Center every year.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 12.5,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    debugPrint("WC Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return WC();
                    }));
                  },
                  icon: Icon(Icons.keyboard_arrow_right, color: Color(0xff96be04)),
                ),
              ),

              ListTile(
                leading: Image.asset('img/F.png'),
                title: Text(
                  'Foster',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                subtitle: Text(
                  'Open your heart and your home to DCHS animals in need of '
                      'temporary care outside of the shelter.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 12.5,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    debugPrint("F Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return F();
                    }));
                  },
                  icon: Icon(Icons.keyboard_arrow_right, color: Color(0xff96be04)),
                ),
              ),

              ListTile(
                leading: Image.asset('img/VV.png'),
                title: Text(
                  'Volunteer Veterinarian',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                subtitle: Text(
                  'Become a Volunteer Veterinarian for DCHS and help us provide medical care for '
                      'animals in need, from those needing spay/neuter surgery to special '
                      'procedures like ophthalmology and dentistry.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 12.5,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    debugPrint("VV Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return VV();
                    }));
                  },
                  icon: Icon(Icons.keyboard_arrow_right, color: Color(0xff96be04)),
                ),
              ),

              ListTile(
                leading: Image.asset('img/SE.png'),
                title: Text(
                  'Special Events',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                subtitle: Text(
                  'Volunteer at fundraising events like Bark & Wine and Toto'
                      's Gala or represent DCHS at a variety of independently held '
                      'fundraisers that benefit the shelter.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 12.5,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    debugPrint("SE Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SE();
                    }));
                  },
                  icon: Icon(Icons.keyboard_arrow_right, color: Color(0xff96be04)),
                ),
              ),

              ListTile(
                leading: Image.asset('img/Y.png'),
                title: Text(
                  'Youth',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                subtitle: Text(
                  'Youth volunteers can help support DCHS by providing comfort and care to animals '
                      'at the shelter, completing service projects or helping in many other ways.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 12.5,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    debugPrint("Y Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Y();
                    }));
                  },
                  icon: Icon(Icons.keyboard_arrow_right, color: Color(0xff96be04)),
                ),
              ),

              ListTile(
                leading: Image.asset('img/SO.png'),
                title: Text(
                  'Secondary Opportunities',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                subtitle: Text(
                  'DCHS has a variety of infrequent opportunities for current '
                      'volunteers who would like to broaden their participation.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 12.5,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    debugPrint("SO Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SO();
                    }));
                  },
                  icon: Icon(Icons.keyboard_arrow_right, color: Color(0xff96be04)),
                ),
              ),

              ListTile(
                title: Text(
                  'Group Volunteering',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                trailing: IconButton(
                  onPressed: () {
                    debugPrint("GV Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return GV();
                    }));
                  },
                  icon: Icon(Icons.keyboard_arrow_right, color: Color(0xff96be04)),
                ),
              ),

              ListTile(

                title: Text(
                  'Community Volunteering',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                trailing: IconButton(
                  onPressed: () {
                    debugPrint("CV Button Clicked");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return CV();
                    }));
                  },
                  icon: Icon(Icons.keyboard_arrow_right, color: Color(0xff96be04)),
                ),
              ),
            ],
          ),
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

