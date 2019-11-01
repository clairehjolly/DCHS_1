import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfile extends StatelessWidget {
  @override
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
  );
  }

}