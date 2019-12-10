import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/services/auth.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/authenticate/sign_up.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final AuthService _auth = AuthService();

  TextStyle style = TextStyle(fontSize: 20.0);

  String email = "";
  String password = "";
  String rePassword = "";

  bool signUpPressed = true;

  @override
  Widget build(BuildContext context) {

    final emailField = TextField(
      onChanged: (value) {
        setState(() {
          email = value;
        });
      },
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
    );

    final passwordField = TextField(
      onChanged: (value) {
        setState(() {
          password = value;
        });
      },
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
    );

    final rePasswordField = TextField(
      onChanged: (value) {
        setState(() {
          rePassword = value;
        });
      },
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Re Enter Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
    );

    final signUpButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(0),
      color: signUpPressed ? Color(0xff6b2978) : Color(0xff3a2662),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {

          setState(() => signUpPressed = !signUpPressed);

          //input validation
          if (email == "" || password == "" || rePassword == "") {
            setState(() => signUpPressed = true);
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(

                  content: Text("Fields Can Not Be Blank"),
                );
              },
            );
          }
          else if (password != rePassword) {
            setState(() => signUpPressed = true);
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(

                  content: Text("Passwords Do Not Match"),
                );
              },
            );
          }
          //make DB call
          dynamic user = await _auth.signUp(email, password);

          if (user == null) {
            setState(() => signUpPressed = true);
            //unsuccessful login
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text("Unable to Create Account"),
                );
              },
            );
          } else {
            //successful signup
            print("signed in");
            print(user.uid);
              Navigator.pop(context);
          }
        },
        child: Text("Sign Up",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Dane County Humane Society"),
        centerTitle: true,
        backgroundColor: Color(0xff6b2978),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              Text(
//                "Sign Up",
//                style: TextStyle(
//                  fontSize: 20.0,
//                  fontWeight: FontWeight.bold,
//                ),
//              ),
              SizedBox(height: 5.0),
              emailField,
              SizedBox(height: 10.0),
              passwordField,
              SizedBox(height: 10.0),
              rePasswordField,
              SizedBox(height: 10.0),
              signUpButton,
            ]
        ),
      ),
    );
  }
}
