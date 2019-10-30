import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {

  //test firebase via anon signup

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future signInAnon() async {

    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return user;

    }catch(e) {
      print(e.toString());
      return null;
    }
  }

  Future signEmailPassword(String email, String password) async {

    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return user;

    }catch(e) {
      print(e.toString());
      return null;
    }
  }

  //login email and pass

  //signup email and pass

  //sign out

}