import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screens/settings/userProfile.dart';
//import 'package:firebase_auth/firebase_auth.dart'


class EditUserProfile extends StatelessWidget {
  final databaseReference = Firestore.instance;


  //String clear = ' Where is this? Its in the home folder, with no apparent  path to this page?';
  TextEditingController DOBController = new TextEditingController();
  TextEditingController firstNameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController profilePicController = new TextEditingController();
  TextEditingController statusController = new TextEditingController();


 // final FirebaseUser user = auth.currentUser().then((FirebaseUser user) {
 //   final userid = user.uid;
 //   // rest of the code|  do stuff
 // });

  // Adding the UUID is the next step, however it still causes the application to crash and messes with dependencies.
  // code has been commented out so that way this works for iteration 2


  void updateData(TextEditingController firstName, TextEditingController lastName, TextEditingController DOB, TextEditingController profile, TextEditingController status) {
    try {
      if(firstName.text != '') { // if the field is blank, do not update the database
        databaseReference
            .collection('User')
            .document('1')
            .updateData({'firstName': firstName.text});
      }
      if(lastName.text != ''){
        databaseReference
            .collection('User')
            .document('1')
            .updateData({'lastName': lastName.text});
      }
      if(DOB.text != '') {
        databaseReference
            .collection('User')
            .document('1')
            .updateData({'DOB': DOB.text});
      }
      if(profile.text != '') {
        databaseReference
            .collection('User')
            .document('1')
            .updateData({'profilePic': profile.text});
      }
      if(DOB.text != '') {
        databaseReference
            .collection('User')
            .document('1')
            .updateData({'Status': status.text});
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
            'Edit Profile',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 25.0,
            ), //TextStyle
          ),
        ),
        backgroundColor: Color(0xff6b2978),
      ),
      body: new Center(
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
                        controller: firstNameController,
                        decoration: InputDecoration(labelText: "First Name: "),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:15.0, right: 15.0),
                      child: TextField(
                        controller: lastNameController,
                        decoration: InputDecoration(labelText: "Last Name: "),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:15.0, right: 15.0),
                      child: TextField(
                        controller: DOBController,
                        decoration: InputDecoration(labelText: "Date of Birth: "),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:15.0, right: 15.0),
                      child: TextField(
                        controller: profilePicController,
                        decoration: InputDecoration(labelText: "Profile Pic Link: "),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:15.0, right: 15.0),
                      child: TextField(
                        controller: statusController,
                        decoration: InputDecoration(labelText: "Status: "),
                      ),
                    ),



                    FlatButton(
                      color: Color(0xffaa295d),
                      onPressed: () {
                        debugPrint("save pressed");
                        updateData(firstNameController, lastNameController,DOBController, profilePicController, statusController);
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return UserProfile();
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