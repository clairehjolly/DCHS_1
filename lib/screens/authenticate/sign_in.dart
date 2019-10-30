import 'package:flutter/material.dart';
import 'package:project/services/auth.dart';
import 'package:project/screens/home/home.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  TextStyle style = TextStyle(fontSize: 20.0);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final emailField = TextField(
      controller: emailController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "login Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
    );

    final passwordField = TextField(
      controller: passwordController,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "login Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(0),
      color: Color(0xff6b2978),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {

          dynamic result = await _auth.signEmailPassword(emailController.text, passwordController.text);

          if (result == null) {
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text("login failed"),
                );
              },
            );
          } else {
            print("signed in");
            print(result);
            return MaterialApp(
              home: Home(),
            );
          }
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );


    final loginAnonButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(0),
      color: Color(0xff6b2978),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async {

          dynamic result = await _auth.signInAnon();

          if (result == null) {
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text("login failed"),
                );
              },
            );
          } else {
            print("signed in");
            print(result);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          }
        },
        child: Text("Login Anonymous",
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
                    Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                    SizedBox(height: 5.0),
                    emailField,
                    SizedBox(height: 15.0),
                    passwordField,
                    SizedBox(height: 15.0),
                    loginButon,
                    SizedBox(height: 15.0),
                    loginAnonButon,
                  ]
        ),
      ),
    );
  }
}
