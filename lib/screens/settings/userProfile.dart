import 'package:flutter/material.dart';
//import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/settings/editUserProfile.dart';

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

  // Update Data
  void updateData() {
    try {
      databaseReference
          .collection('User')
          .document('1')
          .updateData({'description': 'Head First Flutter'});
    } catch (e) {
      print(e.toString());
    }
  }

  Widget build(BuildContext context) {
  return new Scaffold(
    appBar: new AppBar(
      centerTitle: true,
      title: Center(
      child:Text(
      'User Profile',
      style: TextStyle(
        fontFamily: 'SourceSansPro',
        fontSize: 25.0,

      ),
    ),
  ),
    backgroundColor: Color(0xff96be04),
    ),
    body: SingleChildScrollView(
      child: StreamBuilder(
        stream:  Firestore.instance.collection("User").snapshots(),
        builder: (context, snapshot){
          if(!snapshot.hasData) return Text('Loading data... please wait');
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                color: Colors.white,
                child: Center(
                  child: Text('Welcome, '+ snapshot.data.documents[0]['firstName']+'!',
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0
                      )),
                  //child: Text('DOB:'+ snapshot.data.document[0]['DOB'])]
                ),

              ),
              Container(
                padding: EdgeInsets.only(bottom: 15.0),
                child: Center(
                    child: Image.network(snapshot.data.documents[0]['profilePic'],)
                  ////child: Text('DOB:'+ snapshot.data.document[0]['DOB'])]
                ),

              ),

              Card(
                color: Color(0xffaa295d),
                elevation: 2.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                child: ListTile(
                  title: Text('Name: ' + snapshot.data.documents[0]['firstName'] + ' ' + snapshot.data.documents[0]['lastName'],
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Card(
                color: Color(0xffaa295d),
                elevation: 2.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                child: ListTile(
                  title: Text('Date of Birth: ' + snapshot.data.documents[0]['DOB'],
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Card(
                color: Color(0xffaa295d),
                elevation: 2.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                child: ListTile(
                  title: Text('E-mail: ' + snapshot.data.documents[0]['email'],
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),


              Card(
                color: Color(0xffaa295d),
                elevation: 2.0,
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                child: ListTile(
                  title: Text('Status: ' + snapshot.data.documents[0]['status'],
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
//          Container(
//            color: Colors.white,
//            child: Center(
//              child: Text('Date of Birth: '+ snapshot.data.documents[0]['DOB'],
//                  style: TextStyle(
//                      fontFamily: 'SourceSansPro',
//                      fontSize: 20.0
//                  )),
//              //child: Text('DOB:'+ snapshot.data.document[0]['DOB'])]
//            ),
//
//          ),
//          Container(
//            color: Colors.white,
//            child: Center(
//              child: Text('Email: '+ snapshot.data.documents[0]['email'],
//                  style: TextStyle(
//                      fontFamily: 'SourceSansPro',
//                      fontSize: 20.0
//                  )),
//              //child: Text('DOB:'+ snapshot.data.document[0]['DOB'])]
//            ),
//
//          ),
              FlatButton(
                onPressed: () {
                  debugPrint("Edit profile button clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return EditUserProfile();
                  }));
                }, //go to user profile
                color: Color(0xff6b2978),
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                      fontSize: 24.0,
                      letterSpacing: 2.0,
                      fontFamily: 'SourceSansPro',
                      color: Colors.white
                  ),
                ),

              )
            ],
          );
        },

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