import 'package:flutter/material.dart';
import 'package:project/screens/home/menu_pages/animals.dart';
import 'package:project/screens/home/menu_pages/settings.dart';
import 'package:project/screens/home/menu_pages/admin.dart';

import 'package:project/screens/wrapper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Admin(),
    );
  }
}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Login'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//
//  TextStyle style = TextStyle(fontSize: 20.0);
//
//  final loginEmailController = TextEditingController();
//  final loginPasswordController = TextEditingController();
//  final signupEmailController = TextEditingController();
//  final signupPasswordController = TextEditingController();
//  final signupREPController = TextEditingController();
//
//  @override
//  Widget build(BuildContext context) {
//
//    final loginEmailField = TextField(
//      controller: loginEmailController,
//      obscureText: false,
//      style: style,
//      decoration: InputDecoration(
//          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//          hintText: "login Email",
//          border:
//          OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
//    );
//
//    final loginPasswordField = TextField(
//      controller: loginPasswordController,
//      obscureText: true,
//      style: style,
//      decoration: InputDecoration(
//          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//          hintText: "login Password",
//          border:
//          OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
//    );
//
//    final signupEmailField = TextField(
//      controller: signupEmailController,
//      obscureText: false,
//      style: style,
//      decoration: InputDecoration(
//          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//          hintText: "signup Email",
//          border:
//          OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
//    );
//
//    final signupPasswordField = TextField(
//      controller: signupPasswordController,
//      obscureText: true,
//      style: style,
//      decoration: InputDecoration(
//          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//          hintText: "signup Password",
//          border:
//          OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
//    );
//
//   final signupConfirmPasswordField = TextField(
//     controller: signupREPController,
//     obscureText: true,
//     style: style,
//     decoration: InputDecoration(
//         contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//         hintText: "signup Re-Enter Password",
//         border:
//         OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
//   );
//
//    final loginButon = Material(
//      elevation: 5.0,
//      borderRadius: BorderRadius.circular(0),
//      color: Color(0xff6b2978),
//      child: MaterialButton(
//        minWidth: MediaQuery.of(context).size.width,
//        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//        onPressed: () {
//
//          String message = 'username: ' + loginEmailController.text + '\n'
//              + 'password: ' + loginPasswordController.text;
//
//          return showDialog(
//            context: context,
//            builder: (context) {
//              return AlertDialog(
//                content: Text(message),
//              );
//            },
//          );
//        },
//
//        child: Text("Login",
//            textAlign: TextAlign.center,
//            style: style.copyWith(
//                color: Colors.white, fontWeight: FontWeight.bold)),
//      ),
//    );
//
//   final signupButon = Material(
//     elevation: 5.0,
//     borderRadius: BorderRadius.circular(0),
//     color: Color(0xff6b2978),
//     child: MaterialButton(
//       minWidth: MediaQuery.of(context).size.width,
//       padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//       onPressed: () {
//
//         String message = 'username: ' + signupEmailController.text + '\n'
//          + 'password: ' + signupPasswordController.text + '\n'
//          + 'RE pass: ' + signupREPController.text;
//
//         return showDialog(
//           context: context,
//           builder: (context) {
//             return AlertDialog(
//               content: Text(message),
//             );
//           },
//         );
//       },
//
//       child: Text("Sign Up",
//           textAlign: TextAlign.center,
//           style: style.copyWith(
//               color: Colors.white, fontWeight: FontWeight.bold)),
//     ),
//   );
//
//    return Scaffold(
//       appBar: AppBar(
//         title: Text("Dane County Humane Society"),
//         centerTitle: true,
//         backgroundColor: Color(0xff6b2978),
//        ),
//        body: SingleChildScrollView(
//          child: Center(
//            child: Container(
//              color: Colors.white,
//              child: Padding(
//                padding: const EdgeInsets.all(36.0),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.center,
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Text(
//                        "Log In",
//                        style: TextStyle(
//                          fontSize: 20.0,
//                          fontWeight: FontWeight.bold,
//                        ),
//                    ),
//                    SizedBox(height: 5.0),
//                    loginEmailField,
//                    SizedBox(height: 15.0),
//                    loginPasswordField,
//                    SizedBox(height: 15.0),
//                    loginButon,
//                    SizedBox(height: 35.0),
//                    Text(
//                      "Sign Up",
//                      style: TextStyle(
//                        fontSize: 20.0,
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                    SizedBox(height: 5.0),
//                    signupEmailField,
//                    SizedBox(height: 15.0),
//                    signupPasswordField,
//                    SizedBox(height: 15.0),
//                    signupConfirmPasswordField,
//                    SizedBox(height: 15.0),
//                    signupButon,
//                  ],
//                ),
//              ),
//            ),
//          ),
//        )
//    );
//  }
//}
//
