import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/servicemenu/functions/expandable_text.dart';
import 'package:project/screens/servicemenu/rehomepet/rehome_report.dart';
import 'package:project/screens/servicemenu/rehomepet/rehomeAnimal.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter_markdown/flutter_markdown.dart';


class Rehome_pet extends StatefulWidget {

  @override
  _RehomeState createState() => _RehomeState();

}

class _RehomeState extends State<Rehome_pet> {

  @override
  Widget build(BuildContext context) {

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[

          new Text("Surrender \na pet?",
              style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color:Color(0xff6b2978),
                  fontFamily: 'Bitter'
              )),

          new Image.network(
            'https://www.netclipart.com/pp/m/185-1852877_sad-dog-png-sad-puppy-png.png',
            width: 200,
            height: 200,
          ),

        ],
      ),
    );

    _launchURL1() async {
      const url = 'https://www.giveshelter.org/our-services/equine-and-livestock-program';
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
        title: Text('Surrender A Pet?',
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
            child:new Text('We understand that making the decision to surrender a pet is very difficult and we are committed to working with you to find the best possible solution for you and your pet.',
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
              'Rehome your pet',
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
                  text: 'DCHS hosts a rehoming page on our website where you can post your pet for adoption. Nobody knows your pet better than you! You can provide the best description of their personality and pictures of them in a home setting. Additionally, you would be most knowledgeable when talking to a potential new owner about whether the animal would be a good fit for them. Rehoming your pet this way allows them to stay at home in comfortable surroundings while you select the home that you think will be the best for them. This also leaves one more opening at DCHS for those animals without someone to advocate for them.',
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
                    return Rehome_report(RehomeAnimal('', '', '', '','', 'Rehome', '', '', '','N/A','N/A')); //////// Lost_report
                  }));
                },
                //padding: new EdgeInsets.fromLTRB(1.0, 1.0, 1.0, 1.0),
                color: Color(0xffaa295d),
                icon: Icon(Icons.near_me, color: Colors.white),
                label: Text(
                  'Rehome Report',
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

          new ExpansionTile(
            title: Text(
              'Admissions Process',
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
                  'If you decide that surrendering your pet to DCHS is the right option, please be aware that we follow a managed admission philosophy for all incoming animals. This means that we request all customers schedule an appointment before bringing an animal, including strays, to our facility. Utilizing a managed admission process ensures we have the resources to give each animal the best care and accommodations we can provide and allows us to properly isolate, treat and prevent illness from spreading to at-risk populations. Managing the admission of animals helps us plan and prepare, instead of react, and allows us to save more lives.\nCustomers surrendering a pet from outside Dane County must make an appointment and pay the corresponding out-of-county surcharge in addition to our standard surrender fee (see list below) plus tax. Please note, we also require payment of the corresponding out-of-county surcharge (see list below) plus tax, for stray animals being brought by out-of-county customers. The fees help DCHS ensure we are financially able to care for each pet that is surrendered to us and that we are addressing the needs of our community first before expanding services to out-of-county customers.',
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
              'Appointment Process',
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
                  '• Call (608) 838-0413 ext. 100 to schedule an appointment. DCHS takes in all surrendered animals by appointment to ensure that we have the space and resources to best provide for every animal entering the shelter. It is also our goal to schedule appointments for all incoming stray animals. Please note that we are generally scheduling one to two weeks out for surrender appointments, depending on the species.\n• Bring all veterinary records to your appointment. This will ensure that your animal will not receive unnecessary vaccinations or procedures and will expedite their medical assessment.\n• Allocate 30 minutes at DCHS for your appointment. This will provide time to complete a personality profile so we can learn more about your pet’s temperament in the home. If you would like to save time at your appointment, please print and fill out a Personality Profile for your pet and bring it along to your appointment\n   - Canine Personality Profile\n   - Feline Personality Profile\n   - Small Animal Personality Profile\n• Bring the animal yourself. We will receive the most accurate information if you bring your pet in yourself.\nIf you are unable to, we need written and signed consent from you naming another person to act as your agent and that you authorize this agent to bring the animal in on your behalf. Sample Agent Authorization Statement. All cats and critters should be in a carrier and all dogs should be wearing a collar and leash.\n• Bring payment. There is a considerable cost to care for and rehome pets that are in our care. DCHS asks for a surrender fee to off-set those costs and to provide the best care possible for your pet. Any donations beyond that cost are greatly appreciated. DCHS accepts cash or credit card (no checks, except for donation purposes).',
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
              'Surrender Fees',
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
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: new Text(
                  'The following fees apply to surrenders with a scheduled appointment. Surrenders without an appointment are strongly discouraged and are subject to a fee of double the scheduled surrender fee amount listed below.',
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
                  '• Dogs/Puppies \$50\n• Cats/Kittens \$25\n• Rabbits/Ferrets/Chinchillas/Hedgehogs/Degus/Sugar Gliders \$25\n• Reptiles \$25\n• Birds \$20\n• Small Mammals (Guinea Pigs, Rats, Mice, Hamsters, Gerbils)/Amphibians/Fish/Invertebrates \$5',
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
                  'Need to surrender livestock, including chickens, turkeys or waterfowl? We have limited space in our barn so you must make an appointment to surrender any livestock.',
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
                    height: 70,
                    //alignment: Alignment.center,
                    padding: new EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                    color: Colors.white,
                    child: new Text("Learn more about our Equine & Livestock program.",
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

          new ExpansionTile(
            title: Text(
              'Out of County Surcharge',
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
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: new Text(
                  'Out of County Residents pay the Surcharge in addition to the Surrender Fee listed above.',
                  style: new TextStyle(
                    color: Colors.grey[850],
                    fontSize: 18.0,
                    fontFamily: 'Bitter',
                    height: 1.4,
                  ),
                ),
              ),
              new Container(
                padding: const EdgeInsets.fromLTRB(50.0, 0.0, 15.0, 15.0),
                child: new Text(
                  '• Dogs/Puppies \$100\n• Cats/Kittens \$100\n• Rabbits/Ferrets/Chinchillas/Hedgehogs/Degus/Sugar Gliders \$25\n• Reptiles \$100\n• Birds \$20\n• Small Mammals (Guinea Pigs, Rats, Mice, Hamsters, Gerbils)/Amphibians/Fish/Invertebrates \$5\n• Chickens/Turkeys/Waterfowl \$15\n• Goats/Sheep/Pigs/Cattle/Llama/Alpaca \$100\n• Horse/Donkey \$100',
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
    ); //Widget with "Material design"

  }
}