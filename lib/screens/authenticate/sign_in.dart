import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/services/auth.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/authenticate/sign_up.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  TextStyle style = TextStyle(fontSize: 20.0);


  String email = "";
  String password = "";
  bool signUpPressed = true;
  bool logInPressed = true;

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

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(0),
      color: logInPressed ? Color(0xff6b2978) : Color(0xff3a2662),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {

          setState(() => logInPressed = !logInPressed);

          dynamic user = await _auth.signEmailPassword(email, password);

          //input validation
          if (email == "" || password == "") {
            setState(() => logInPressed = true);
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(

                  content: Text("Fields Can Not Be Blank"),
                );
              },
            );
          } else if (user == null) {
            setState(() => logInPressed = true);
            //unsuccessful login
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(

                  content: Text("Username or Password Incorrect"),
                );
              },
            );
          }
          else {
            //successful login
            print("signed in");
            print(user.uid);
          }
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
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
          //Navigator.pushReplacement(
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUp()),
          );
          setState(() => signUpPressed = !signUpPressed);
        },
        child: Text(
            "Sign Up",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Dane County Humane Society: Log In"),
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
//                "Log In",
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
              loginButon,
              SizedBox(height: 10.0),
              signUpButton,
            ]
        ),
      ),
    );
  }
}
