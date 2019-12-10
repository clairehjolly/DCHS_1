import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screens/servicemenu/rehomepet/rehomeAnimal.dart';
import 'package:project/screens/servicemenu/functions/firestore.dart';


class Rehome_report extends StatefulWidget {
  //LostAnimal();
  final RehomeAnimal rehomeAnimal;
  Rehome_report(this.rehomeAnimal);

  @override
  _Rehome_reportState createState() => _Rehome_reportState();
}

class _Rehome_reportState extends State<Rehome_report> {

  FirestoreService fs = new FirestoreService();

  TextEditingController nameController;
  //TextEditingController animalIDController;
  TextEditingController ageController;
  TextEditingController sexController;
  TextEditingController speciesController;
  TextEditingController breedController;
  TextEditingController statusController;
  TextEditingController locationController;
  TextEditingController animalPicController;
  TextEditingController descriptionController;
  TextEditingController lonelyHeartsController;
  TextEditingController adoptionFeeController;

  void initState(){
    super.initState();
    nameController = new TextEditingController(text:widget.rehomeAnimal.name);
    ageController = new TextEditingController(text:widget.rehomeAnimal.age);
    sexController = new TextEditingController(text:widget.rehomeAnimal.sex);
    speciesController = new TextEditingController(text:widget.rehomeAnimal.species);
    breedController = new TextEditingController(text:widget.rehomeAnimal.breed);
    statusController = new TextEditingController(text:widget.rehomeAnimal.status);
    locationController = new TextEditingController(text:widget.rehomeAnimal.location);
    animalPicController = new TextEditingController(text:widget.rehomeAnimal.animalPic);
    descriptionController = new TextEditingController(text:widget.rehomeAnimal.description);
    lonelyHeartsController = new TextEditingController(text:widget.rehomeAnimal.lonelyHearts);
    adoptionFeeController = new TextEditingController(text:widget.rehomeAnimal.adoptionFee);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Rehome Report',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.white,
              fontFamily: 'Bitter',
            ), //TextStyle
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffaa295d),
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-160,

            child:ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left:15.0, right: 15.0),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(labelText: "Name: "),
                    //labelStyle: TextStyle(),
                    //color: Color(0xff3a2662)),
                    //style: TextStyle(fontSize: 25.0, color: Color(0xff3a2662)),
                  ),
                ),
/*
                Padding(
                  padding: EdgeInsets.only(left:15.0, right: 15.0),
                  child: TextField(
                    controller: animalIDController,
                    decoration: InputDecoration(labelText: "Animal ID: "),
                  ),
                ),
*/
                Padding(
                  padding: EdgeInsets.only(left:15.0, right: 15.0),
                  child: TextField(
                    controller: ageController,
                    decoration: InputDecoration(labelText: "Age: "),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left:15.0, right: 15.0),
                  child: TextField(
                    controller: sexController,
                    decoration: InputDecoration(labelText: "Sex: "),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left:15.0, right: 15.0),
                  child: TextField(
                    controller: speciesController,
                    decoration: InputDecoration(labelText: "Species: "),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left:15.0, right: 15.0),
                  child: TextField(
                    controller: breedController,
                    decoration: InputDecoration(labelText: "Breed: "),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left:15.0, right: 15.0),
                  child: TextField(
                    controller: statusController,
                    decoration: InputDecoration(labelText: "Status: "),
                    enabled: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left:15.0, right: 15.0),
                  child: TextField(
                    controller: locationController,
                    decoration: InputDecoration(labelText: "Location: "),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left:15.0, right: 15.0),
                  child: TextField(
                    controller: animalPicController,
                    decoration: InputDecoration(labelText: "Animal Picture: "),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left:15.0, right: 15.0),
                  child: TextField(
                    controller: lonelyHeartsController,
                    decoration: InputDecoration(labelText: "Lonely Hearts: "),
                    enabled: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left:15.0, right: 15.0),
                  child: TextField(
                    controller: adoptionFeeController,
                    decoration: InputDecoration(labelText: "Adoption Fee: "),
                    enabled: false,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left:15.0, right: 15.0),
                  child: TextField(
                    controller: descriptionController,
                    decoration: InputDecoration(labelText: "Description: "),
                  ),
                ),

                FlatButton(
                  color: Color(0xffaa295d),
                  onPressed: () {
                    debugPrint("Submit Rehome Report Button Clicked");
                    //fs.createAnimal(nameController.text, animalIDController.text, ageController.text, sexController.text,
                    //speciesController.text, breedController.text, statusController.text, locationController.text,
                    //animalPicController.text, descriptionController.text,
                    //lonelyHeartsController.text, adoptionFeeController.text).then((_){
                    //Navigator.pop(context);
                    //});
                    fs.createAnimal(nameController.text, ageController.text, sexController.text,
                        speciesController.text, breedController.text, statusController.text, locationController.text,
                        animalPicController.text, descriptionController.text,
                        lonelyHeartsController.text, adoptionFeeController.text).then((_){
                      Navigator.pop(context);
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    'Submit Rehome Report',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: 'Bitter',
                    ),
                  ),
                ),
                new Container(
                  padding: const EdgeInsets.all(100.0),
                )
              ],

            ),

          ),
        ],
      ),
    );
  }
}
