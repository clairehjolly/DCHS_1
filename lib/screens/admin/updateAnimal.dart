import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screens/admin/animalProfile.dart';
import 'package:project/screens/admin/newAnimal.dart';
import 'package:project/screens/settings/userProfile.dart';


class UpDateAnimal extends StatelessWidget {

  final databaseReference = Firestore.instance;
  final NewAnimal anim;
  UpDateAnimal({Key key,@required this.anim}):super(key:key);

  //String clear = ' Where is this? Its in the home folder, with no apparent  path to this page?';
  TextEditingController nameController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();
  TextEditingController sexController = new TextEditingController();
  TextEditingController speciesController = new TextEditingController();
  TextEditingController breedController = new TextEditingController();
  TextEditingController statusController = new TextEditingController();
  TextEditingController locationController = new TextEditingController();
  TextEditingController animalPicController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();
  TextEditingController lonelyHeartsController = new TextEditingController();
  TextEditingController adoptionFeeController = new TextEditingController();


  void updateData(TextEditingController name, TextEditingController age, TextEditingController sex, TextEditingController species,
      TextEditingController breed, TextEditingController status, TextEditingController location, TextEditingController animalPic,
      TextEditingController description, TextEditingController lonelyHearts, TextEditingController adoptionFee) {
    try {
      if(name.text != '') { // if the field is blank, do not update the database
        databaseReference
            .collection('Animal')
            .document(anim.animalID)
            .updateData({'Name': name.text});
      }

      if(age.text != '') { // if the field is blank, do not update the database
        databaseReference
            .collection('Animal')
            .document(anim.animalID)
            .updateData({'Age': age.text});
      }

      if(sex.text != '') { // if the field is blank, do not update the database
        databaseReference
            .collection('Animal')
            .document(anim.animalID)
            .updateData({'Sex': sex.text});
      }

      if(species.text != '') { // if the field is blank, do not update the database
        databaseReference
            .collection('Animal')
            .document(anim.animalID)
            .updateData({'Species': species.text});
      }

      if(breed.text != '') { // if the field is blank, do not update the database
        databaseReference
            .collection('Animal')
            .document(anim.animalID)
            .updateData({'Breed': breed.text});
      }

      if(status.text != '') { // if the field is blank, do not update the database
        databaseReference
            .collection('Animal')
            .document(anim.animalID)
            .updateData({'Status': status.text});
      }

      if(location.text != '') { // if the field is blank, do not update the database
        databaseReference
            .collection('Animal')
            .document(anim.animalID)
            .updateData({'Location': location.text});
      }

      if(animalPic.text != '') { // if the field is blank, do not update the database
        databaseReference
            .collection('Animal')
            .document(anim.animalID)
            .updateData({'Animal Picture Link': animalPic.text});
      }

      if(description.text != '') { // if the field is blank, do not update the database
        databaseReference
            .collection('Animal')
            .document(anim.animalID)
            .updateData({'Description': description.text});
      }

      if(lonelyHearts.text != '') { // if the field is blank, do not update the database
        databaseReference
            .collection('Animal')
            .document(anim.animalID)
            .updateData({'Lonely Hearts': lonelyHearts.text});
      }

      if(adoptionFee.text != '') { // if the field is blank, do not update the database
        databaseReference
            .collection('Animal')
            .document(anim.animalID)
            .updateData({'Adoption Fee': adoptionFee.text});
      }

    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'Edit Animal',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 25.0,
            ), //TextStyle
          ),
        ),
        backgroundColor: Color(0xff6b2978),
      ),
      resizeToAvoidBottomPadding: false,
      body: new SingleChildScrollView(
        child: Column(
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
                        decoration: InputDecoration(labelText: "Animal Picture Link: "),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:15.0, right: 15.0),
                      child: TextField(
                        controller: descriptionController,
                        decoration: InputDecoration(labelText: "Description: "),
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



                    FlatButton(
                      color: Color(0xffaa295d),
                      onPressed: () {
                        debugPrint("Save button clicked");
                        updateData(nameController, ageController,sexController, speciesController, breedController,statusController,
                        locationController, animalPicController, descriptionController, lonelyHeartsController, adoptionFeeController);
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return AnimalProfile();
                        }));
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2.0,
                          fontSize: 20.0,
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}
