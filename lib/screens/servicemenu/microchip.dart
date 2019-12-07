import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:project/screens/home/outreach.dart';
import 'package:project/screens/servicemenu/functions/expandable_text.dart';

class Microchip extends StatefulWidget {

  @override
  _MicrochipState createState() => _MicrochipState();

}

class _MicrochipState extends State<Microchip> {

  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0), //Top, Right, Bottom, Left
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          new Text("Microchip\nYour Pet",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Color(0xff6b2978),
                  fontFamily: 'Bitter'
              )),

          new Image.network(
            'https://www.environment.sa.gov.au/files/sharedassets/good_living/images/content/2018/03/microchipping-pets-large.jpg',
            width: 200,
            height: 200,
          ),

        ],
      ),
    );

    // return new MaterialApp(
    //   home:
    return new Scaffold(
      appBar: AppBar(
        title: Text('Microchipping',
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
              'Microchips are a great tool to help us reunite lost animals with their owners. They provide an extra level of protection in the event the animal is separated from its collar and ID tag. They can also help determine proof of ownership.',
              style: new TextStyle(
                color: Color(0xff6b2978),
                fontSize: 20.0,
                fontFamily: 'Bitter',
                height: 1.5,
                // fontWeight: FontWeight.bold
              ),
            ),
          ),

          new Container(
            padding: const EdgeInsets.all(15.0),
            child: new Text(
              'Microchips are an implanted form of identification. This inexpensive chip — the size of a grain of rice — is implanted between your pet’s shoulder blades just under the skin and is equipped with an individual scanning number. A microchip is a passive (containing no internal power source) Radio Frequency Identification (RFID) and when a scanner passes over the microchip, the circuit is completed and the chip transmits a number to the scanner. That number is then listed with your contact information in a nation-wide database that can be accessed by veterinarians and animal shelters.',
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
            child: new Text(
              'DCHS offers microchips to adopters, to people who are redeeming their lost pets and to the general public on a walk-in basis at the Main Shelter any time during the hours we are open. Walk-in microchip clients and owners who are redeeming their lost pet will be asked to fill out a \'Microchip Registration\' and \'Microchip Waiver and Release Statement\' form prior to microchip implant. The cost to insert and register the microchips is:',
              style: new TextStyle(
                color: Colors.grey[850],
                fontSize: 18.0,
                fontFamily: 'Bitter',
                height: 1.4,
              ),
            ),
          ),

          new Container(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 10.0),
            child: new Text(
              'For Dogs - \$40\nFor Cats - \$25\nFor animals at time of redemption - \$15',
              style: new TextStyle(
                color: Colors.grey[850],
                fontSize: 20.0,
                fontFamily: 'Bitter',
                height: 1.8,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          new Container(
            padding: const EdgeInsets.all(15.0),
            child: new Text(
              'We use 24PetWatch microchips and enter all information about the owner and the animal in our database, as well as registering the chip for you with the 24PetWatch national database. If you move, change phone numbers or change ownership (i.e. rehome the pet) you will need to contact the microchip company to update the information on the chip. It is very important to keep your information up-to-date so that you can be reached in the event your pet goes missing.',
              style: new TextStyle(
                color: Colors.grey[850],
                fontSize: 18.0,
                fontFamily: 'Bitter',
                height: 1.4,
              ),
            ),
          ),

          new Image.network(
            'https://www.giveshelter.org/assets/images/Articles/24Hour_Pet_Watch.jpg',
            width: 100,
            height: 80,
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
    ); //Widget with "Material design"

    // }


  }

}