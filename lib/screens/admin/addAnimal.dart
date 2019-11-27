import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screens/admin/newAnimal.dart';
import 'package:project/screens/admin/firestoreService.dart';


class AddAnimal extends StatefulWidget {
  //AddAnimal();
  final NewAnimal newAnimal;
  AddAnimal(this.newAnimal);

  @override
  _AddAnimalState createState() => _AddAnimalState();
}

class _AddAnimalState extends State<AddAnimal> {

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
  nameController = new TextEditingController(text:widget.newAnimal.name);
  //animalIDController = new TextEditingController(text:widget.newAnimal.animalID);
  ageController = new TextEditingController(text:widget.newAnimal.age);
  sexController = new TextEditingController(text:widget.newAnimal.sex);
  speciesController = new TextEditingController(text:widget.newAnimal.species);
  breedController = new TextEditingController(text:widget.newAnimal.breed);
  statusController = new TextEditingController(text:widget.newAnimal.status);
  locationController = new TextEditingController(text:widget.newAnimal.location);
  animalPicController = new TextEditingController(text:widget.newAnimal.animalPic);
  descriptionController = new TextEditingController(text:widget.newAnimal.description);
  lonelyHeartsController = new TextEditingController(text:widget.newAnimal.lonelyHearts);
  adoptionFeeController = new TextEditingController(text:widget.newAnimal.adoptionFee);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'New Animal',
            style: TextStyle(
              fontFamily: 'Bitter',
              fontSize: 25.0,
            ), //TextStyle
          ),
        ),
        backgroundColor: Color(0xff6b2978),
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
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left:15.0, right: 15.0),
                  child: TextField(
                    controller: adoptionFeeController,
                    decoration: InputDecoration(labelText: "Adoption Fee: "),
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
                    debugPrint("Save new animal Button Clicked");
                    fs.createAnimal(nameController.text, ageController.text, sexController.text,
                        speciesController.text, breedController.text, statusController.text, locationController.text,
                        animalPicController.text, descriptionController.text,
                        lonelyHeartsController.text, adoptionFeeController.text).then((_){
                        Navigator.pop(context);

                    });
                    },
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Bitter',
                    ),
                  ),
                ),
              ],

            ),

          ),
        ],
      ),
    );
  }
}
