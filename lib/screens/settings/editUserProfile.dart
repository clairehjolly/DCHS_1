import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class EditUserProfile extends StatelessWidget {
  final databaseReference = Firestore.instance;

  //String clear = ' Where is this? Its in the home folder, with no apparent  path to this page?';
  TextEditingController DOBController = new TextEditingController();
  TextEditingController firstNameController = new TextEditingController();
  TextEditingController lastNameController = new TextEditingController();
  TextEditingController profilePicController = new TextEditingController();
  TextEditingController volunteerController = new TextEditingController();

  void updateData(TextEditingController firstName, TextEditingController lastName, TextEditingController DOB, TextEditingController profile) {
    try {
      databaseReference
          .collection('User')
          .document('1')
          .updateData({'firstName':firstName.text});

      databaseReference
          .collection('User')
          .document('1')
          .updateData({'LastName':lastName.text});
      databaseReference
          .collection('User')
          .document('1')
          .updateData({'DOB':DOB.text});
      databaseReference
          .collection('User')
          .document('1')
          .updateData({'profilePic':profile.text});
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
              fontFamily: 'Bitter',
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
                        decoration: InputDecoration(labelText: "First Name:: "),
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
                        decoration: InputDecoration(labelText: " Birthday: "),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:15.0, right: 15.0),
                      child: TextField(
                        controller: profilePicController,
                        decoration: InputDecoration(labelText: "ProfilePic Link: "),
                      ),
                    ),



                    FlatButton(
                      color: Color(0xffaa295d),
                      onPressed: () {
                        debugPrint(" save pressed");
                        updateData(firstNameController, lastNameController,DOBController, profilePicController);
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

            ]
        ),
      ),
    );
  }
}