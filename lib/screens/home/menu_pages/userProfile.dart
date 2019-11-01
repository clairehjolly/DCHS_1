import 'package:flutter/material.dart';
//import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfile extends StatelessWidget {
  @override
  final databaseReference = Firestore.instance;
  void createRecord() async {
    await databaseReference.collection("User")
        .document("2") // change to UUID later
        .setData({
      'DOB': '9/11/2001',
      'firstName': 'George'
    });
  }

  Widget build(BuildContext context) {
  return new Scaffold(
    appBar: new AppBar(
      title: Center(
      child:Text(
      'User Profile',
      style: TextStyle(
        fontFamily: 'Bitter',
        fontSize: 25.0,
      ),
    ),
  ),
    backgroundColor: Color(0xff6b2978),
    ),
    body: StreamBuilder(
      stream:  Firestore.instance.collection("User").snapshots(),
      builder: (context, snapshot){
        if(!snapshot.hasData) return Text('Loading data... please ait');
        return Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Center(
              child: Text('Welcome, '+ snapshot.data.documents[0]['firstName']+'!',
              style: TextStyle(
                fontFamily: 'Bitter',
                fontSize: 30.0
              )),
              //child: Text('DOB:'+ snapshot.data.document[0]['DOB'])]
            ),

          ),
          Container(
            color: Colors.white,
            child: Center(
              child: Image.network(snapshot.data.documents[0]['profilePic'])
              ////child: Text('DOB:'+ snapshot.data.document[0]['DOB'])]
            ),

          ),
          Container(
            color: Colors.white,
            child: Center(
              child: Text('Date of Birth: '+ snapshot.data.documents[0]['DOB'],
                  style: TextStyle(
                      fontFamily: 'Bitter',
                      fontSize: 20.0
                  )),
              //child: Text('DOB:'+ snapshot.data.document[0]['DOB'])]
            ),

          ),
          Container(
            color: Colors.white,
            child: Center(
              child: Text('Email: '+ snapshot.data.documents[0]['email'],
                  style: TextStyle(
                      fontFamily: 'Bitter',
                      fontSize: 20.0
                  )),
              //child: Text('DOB:'+ snapshot.data.document[0]['DOB'])]
            ),

          ),
          FlatButton.icon(
            onPressed: () {
              debugPrint("Edit profile button clicked");
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return UserProfile();
              }));
            }, //go to user profile
            color: Color(0xff6b2978),
            icon: Icon(Icons.account_box),
            label: Text(
              'Edit Profile',
              style: TextStyle(
                fontSize: 24.0,
                fontFamily: 'Bitter',
                color: Colors.white
              ),
            ),

          )
        ],
      );
      },

    ),

  );
  }

}