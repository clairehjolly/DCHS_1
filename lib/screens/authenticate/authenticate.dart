import 'package:flutter/material.dart';
import 'package:project/screens/authenticate/sign_in.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {

    //needs to check auth state, return home if auth else return signin

    return Container(
      child: SignIn(),
    );
  }
}
