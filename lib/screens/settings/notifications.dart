import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project/screens/settings/firestoreService.dart';
//import 'package:project/screens/admin/newAnimal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:project/screens/admin/animalProfile.dart';
//import 'package:project/screens/admin/addAnimal.dart';
import 'package:project/screens/settings/newNotification.dart';
import 'package:project/screens/settings/clearNotifications.dart';


//HAVE ANIMAL LISTED HERE

class notifications extends StatefulWidget {
  @override
  _notifyState createState() => _notifyState();
}

class _notifyState extends State<notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'Notifications',
            style: TextStyle(
              fontFamily: 'Bitter',
              fontSize: 25.0,
            ), //TextStyle
          ),
        ),
        backgroundColor: Color(0xff6b2978),
      ),
      body:  NotificationListPage(),

    );  }
}

//To display the list of animals
class NotificationListPage extends StatefulWidget {
  @override
  _NotificationListPageState createState() => _NotificationListPageState();
}

class _NotificationListPageState extends State<NotificationListPage> {

  List<NewNotification> note;
  FirestoreService fs = new FirestoreService();
  StreamSubscription<QuerySnapshot> noteView;  //??

  void initState(){
    super.initState();

    note = new List();

    noteView?.cancel();
    noteView = fs.getNotificationList().listen((QuerySnapshot snapshot){
      final List<NewNotification> Notifications = snapshot.documents
          .map((documentSnapshot) => NewNotification. fromMap(documentSnapshot.data)).toList();

      setState(() {
        this.note = Notifications;
      });
    });
  }

  //String id = Firestore.instance.collection('Animal').document().getId();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,// originally false
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-100,
            child: ListView.builder(
                itemCount: note.length,// NEEDS TO BE CHANGED
                itemBuilder: (context, index) {
                  return Stack(children: <Widget>[
                    Column(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left:8.0, right: 8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 120.0,
                          child: Padding(
                            padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
                            child: Material(
                              color: Colors.white,
                              elevation: 14.0,
                              shadowColor: Color(0xffaa295d),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Column(
                                        //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                        //crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            // Mess with alignment in here.... Still does not wrap and attempted wrapping causes page to not load
                                            // title goes here
                                            '${note[index].title}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 24.0),
                                          ),

                                          Text(
                                            // mess with alignment in here
                                            // message body goes here
                                            '${note[index].message}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18.0),
                                          ),
                                        ],
                                      ),
                                    ],

                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )]),
                  ]);
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff6b2978),
        child: Icon(Icons.check_box),
        onPressed: () {
          debugPrint("Clear notifications");
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return clearNotifications();
          }));
          //Navigator.push(context,MaterialPageRoute(builder: (context) => TaskScreen()),
          //Navigator.push(
          // context,
          // MaterialPageRoute(
          //builder: (context) => AddAnimal(NewAnimal('', '', '', '', '','', '', '', '', '','','')),
          //   fullscreenDialog: true),
          //);
        },
      ),

    );

  }
}

