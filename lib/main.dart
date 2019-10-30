import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextStyle style = TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

   final header =  AppBar(
      title: Text("Dane County Humane Society"),
      centerTitle: true,
      backgroundColor: Colors.purple[800],
    );

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
    );

   final confirmPasswordField = TextField(
     obscureText: true,
     style: style,
     decoration: InputDecoration(
         contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
         hintText: "Re-Enter Password",
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
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

   final signupButon = Material(
     elevation: 5.0,
     borderRadius: BorderRadius.circular(0),
     color: Color(0xff6b2978),
     child: MaterialButton(
       minWidth: MediaQuery.of(context).size.width,
       padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
       onPressed: () {},
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
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        "Log In",
                      style: style,
                    ),
                    SizedBox(height: 5.0),
                    emailField,
                    SizedBox(height: 15.0),
                    passwordField,
                    SizedBox(height: 15.0),
                    loginButon,
                    SizedBox(height: 45.0),
                    Text(
                      "Sign Up",
                      style: style,
                    ),
                    SizedBox(height: 5.0),
                    emailField,
                    SizedBox(height: 15.0),
                    passwordField,
                    SizedBox(height: 15.0),
                    confirmPasswordField,
                    SizedBox(height: 15.0),
                    signupButon,
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}

