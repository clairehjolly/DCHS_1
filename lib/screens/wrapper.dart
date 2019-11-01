import 'package:flutter/material.dart';
import 'package:project/screens/authenticate/authenticate.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/home/menu_pages/settings.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //if auth return home or auth widget
    // changing to settings for dev work
    return Authenticate();
    //return Settings();
  }
}
