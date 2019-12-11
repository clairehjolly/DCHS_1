import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/models/user.dart';
import 'package:flutter/material.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object
  User _localUser(FirebaseUser user) {
    bool isAdmin = false;
    if (user != null) {
      if (user.email == "admin@dchs.org" || user.email == "admin@test.co") {
        isAdmin = true;
      }
    }
    return user != null ? User(uid: user.uid, adminStatus: isAdmin): null;
  }

  //user status stream
  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_localUser);
  }


  //anonymous sign in
  Future signInAnon() async {

    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      print("signin success");
      return user;

    }catch(e) {
      print("error signing in anonymously");
      return null;
    }
  }

  //email and password sign in
  Future signEmailPassword(String email, String password) async {

    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _localUser(user);

    }catch(e) {
      print(e.toString());
      return null;
    }
  }

  //sign up with email and password
  Future signUp(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
      FirebaseUser user = result.user;
      return _localUser(user);
    }catch(e) {
      print(e.toString());
      return null;
    }
  }

  //logout
  Future logOut() async {

    try {
      return await _auth.signOut();
    }catch (e) {
      print(e.toString());
      return null;
    }

  }

}