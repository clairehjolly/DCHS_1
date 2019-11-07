import 'package:flutter/material.dart';
import 'package:project/models/user.dart';
import 'package:project/screens/authenticate/authenticate.dart';
import 'package:project/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
