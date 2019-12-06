import 'package:flutter/material.dart';
import 'package:project/screens/home/calendar.dart';
import 'package:project/screens/home/home.dart';

class DogTrainingClass extends StatefulWidget {
  @override
  _DogTrainingClassState createState() => _DogTrainingClassState();
}

class _DogTrainingClassState extends State<DogTrainingClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dog Training Classes"),
        centerTitle: true,
        backgroundColor: Color(0xff96be04),
      ),
      body: new ListView(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 0.0),
              child:new Text('Dog Training Classes',
                style:new TextStyle(
                  color: Color(0xff6b2978),
                  fontSize: 27.0,
                ),
              ),
            ),
            //SizedBox(height: 8.0),
            new Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 0.0),
              child: new Text("DCHS offers dog training classes to help foster positive relationships between people and their pets. Our goal is to help keep pets happy in their homes by educating people about humane and responsible training methods.",
                style: new TextStyle(
                    color: Color(0xff3a2662),
                    fontSize: 18.0,
                    fontFamily: 'Bitter'
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 0.0),
              child: new Text("Using positive reinforcement training methods, our certified and experienced trainers will teach you and your dog basic manners, healthy ways to socialize, tips on providing humane care and mental exercises. Upon graduation, the bond between you and your dog will be strengthened, you will have a deeper understanding of how dogs learn and you will know how to use life-rewards to encourage good behaviors.",
                style: new TextStyle(
//                    color: Color(0xff6b2978),
                    fontSize: 18.0,
                    fontFamily: 'Bitter'
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 0.0),
              child: new Text("Puppy Preschool",
                style: new TextStyle(
                    color: Color(0xff6b2978),
                    fontSize: 27.0,
                    fontFamily: 'Bitter'
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 0.0),
              child: new Text("\$100 for six week session\n\nSocialization is one of the most important things you can do for your new pup. Getting your dog familiar with new sights, sounds and smells - including people and other animals - will help your dog be accustomed to everyday life and to develop skills to cope with new experiences in a positive way. In this class, you will discover how dogs learn, the best ways to teach your dog basic manners and tips on how to socialize your puppy. Give your dog a good start in life by taking a puppy class! For pups 8-19 weeks of age at the start of class.",
                style: new TextStyle(
//                    color: Color(0xff6b2978),
                    fontSize: 18.0,
                    fontFamily: 'Bitter'
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 270.0, 10.0),
              child: MaterialButton(
                  color: Color(0xffffc50d),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Calendar()),
                    );
                  },
                  child: Text("See Classes")
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 0.0),
              child: new Text("Dog Training I Class",
                style: new TextStyle(
                    fontSize: 27.0,
                    color: Color(0xff6b2978),
                    fontFamily: 'Bitter'
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 0.0),
              child: new Text("\$100 for six week session\n\nIt’s never too late to teach your dog new skills and change behavior. Let us help you set your dog up for success through a better understanding of how dogs learn and setting reasonable expectations. Together, you and your dog will learn useful skills that can be applied later to help identify positive approaches to real life situations. For dogs 20 weeks and older.",
                style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bitter'
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 270.0, 10.0),
              child: MaterialButton(
                  color: Color(0xffffc50d),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Calendar()),
                    );
                  },
                  child: Text("See Classes")
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 0.0),
              child: new Text("Dog Training II Class",
                style: new TextStyle(
                    fontSize: 27.0,
                    color: Color(0xff6b2978),
                    fontFamily: 'Bitter'
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 0.0),
              child: new Text("\$100 for six week session\n\nDoes your dog have selective hearing? Only comes when called some of the time? Does your dog have difficulty paying attention? Will your dog only respond when you have a treat in your hand? Then come join us in Dog Training II Class where we improve upon your dog's skills so you and your dog are better equipped to navigate real-world challenges.\n\nEnrollment in Dog Training II Class requires previous enrollment in Dog Training I Class or a previous comparable class.",
                style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Bitter'
                ),
              ),
            ),
            new Container(
              padding: const EdgeInsets.fromLTRB(15.0, 10.0, 270.0, 60.0),
              child: MaterialButton(
                  color: Color(0xffffc50d),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Calendar()),
                    );
                  },
                  child: Text("See Classes")
              ),
            ),
          ]
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
