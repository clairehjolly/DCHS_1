import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project/screens/home/menu_pages/firestoreService.dart';
import 'newAnimal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screens/home/menu_pages/animalProfile.dart';
import 'addAnimal.dart';


//HAVE ANIMAL LISTED HERE

class Animals extends StatefulWidget {
  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'Animals',
            style: TextStyle(
              fontFamily: 'Bitter',
              fontSize: 25.0,
            ), //TextStyle
          ),
        ),
        backgroundColor: Color(0xff6b2978),
      ),
      body:  AnimalsListPage(),

    );  }
}

//To display the list of animals
class AnimalsListPage extends StatefulWidget {
  @override
  _AnimalsListPageState createState() => _AnimalsListPageState();
}

class _AnimalsListPageState extends State<AnimalsListPage> {

  List<NewAnimal> animal;
  FirestoreService fs = new FirestoreService();
  StreamSubscription<QuerySnapshot> animalView;

  void initState(){
    super.initState();

    animal = new List();

    animalView?.cancel();
    animalView = fs.getAnimalList().listen((QuerySnapshot snapshot){
      final List<NewAnimal> animals = snapshot.documents
          .map((documentSnapshot) => NewAnimal. fromMap(documentSnapshot.data)).toList();

      setState(() {
        this.animal = animals;
      });
    });
  }

  String id = Firestore.instance.collection('Animal').document().getId();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
         children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-100,
                child: ListView.builder(
                    itemCount: animal.length,
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
                                                Icon(Icons.pets), //WILL REPLACE WITH ANIMAL PICTURE LATER ON
                                              Column(
                                                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                '${animal[index].name}',
                                                style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 24.0),
                                                ),

                                                  Text(
                                                '${animal[index].animalID}',
                                                style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18.0),
                                                ),
                                                ],
                                          ),
                                              Container(
                                                padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                                                child: Column(
                                                  children: <Widget>[

                                                    FlatButton(
                                                      onPressed: () {
                                                        debugPrint("Edit Button Clicked");
                                                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                          return AnimalProfile();
                                                        }));
                                                      },
                                                      color: Color(0xffffc50d),
                                                      child: Text(
                                                        'Edit',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontFamily: 'Bitter',
                                                        ),
                                                      ),
                                                    ),

                                                    FlatButton(
                                                      onPressed: () async {
                                                        debugPrint("Delete Button Clicked");
                                                        await Firestore.instance.collection('Animal')
                                                            .document().delete(); //
                                                      },
                                                      color: Color(0xffffc50d),
                                                      child: Text(
                                                        'Delete',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontFamily: 'Bitter',
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  //crossAxisAlignment: CrossAxisAlignment.center,

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
        child: Icon(Icons.add),
        onPressed: () {
          //Navigator.push(context,MaterialPageRoute(builder: (context) => TaskScreen()),
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddAnimal(NewAnimal('', '', '', '', '','', '', '', '', '','','')),
                fullscreenDialog: true),
          );
        },
      ),
    );

  }
}

