import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/home/menu_pages/animals.dart';

// This shows the list of information of Animal

class AnimalProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'Animal Profile',
            style: TextStyle(
              fontFamily: 'Bitter',
              fontSize: 25.0,
            ), //TextStyle
          ),
        ),
        backgroundColor: Color(0xff6b2978),
      ),

      body: StreamBuilder(
        stream:  Firestore.instance.collection('Animal').snapshots(),
    builder: (context, snapshot){
    if(!snapshot.hasData) return Text('Loading...');
    return Column(
      children: <Widget>[
        Container(
          child: Text('Name: '+ snapshot.data.documents[0]['name'],
              style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 20.0
              )),
        ),
        Container(
          child: Text('Animal ID: '+ snapshot.data.documents[0]['animalID'],
              style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 20.0
              )),
        ),
        Container(
          child: Text('Age: '+ snapshot.data.documents[0]['age'],
              style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 20.0
              )),
        ),
        Container(
          child: Text('Sex: '+ snapshot.data.documents[0]['sex'],
              style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 20.0
              )),
        ),
        Container(
          child: Text('Species: '+ snapshot.data.documents[0]['species'],
              style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 20.0
              )),
        ),
        Container(
          child: Text('Breed: '+ snapshot.data.documents[0]['breed'],
              style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 20.0
              )),
        ),
        Container(
          child: Text('Status: '+ snapshot.data.documents[0]['status'],
              style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 20.0
              )),
        ),
        Container(
          child: Text('Location: '+ snapshot.data.documents[0]['location'],
              style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 20.0
              )),
        ),
        Container(
          child: Text('Animal Picture: '+ snapshot.data.documents[0]['animalPic'],
              style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 20.0
              )),
        ),
        Container(
          child: Text('Description: '+ snapshot.data.documents[0]['description'],
              style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 20.0
              )),
        ),
        Container(
          child: Text('Lonely Hearts: '+ snapshot.data.documents[0]['lonelyHearts'],
              style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 20.0
              )),
        ),
        Container(
          child: Text('Adoption Fee: '+ snapshot.data.documents[0]['adoptionFee'],
              style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 20.0
              )),
        ),
      ],

    );
    }
    ),
    );
  }
}