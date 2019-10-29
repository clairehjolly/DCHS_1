import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("Dane County Humane Society"),
      centerTitle: true,
      backgroundColor: Colors.purple[800],
    ),
    body: Center (
      child: Column(
        children: [
          Text("Login/Signup page"),
          Text("email"),
          Text("password"),
          Text("username"),
        ],
      ),
    )
  ),
));
