import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project/screens/servicemenu/firestore.dart';
import 'package:project/screens/servicemenu/lostAnimal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screens/home/home.dart';
import 'package:project/screens/servicemenu/lost_pet_profile.dart';


class Lost_pet_db extends StatefulWidget {
  @override
  _Lost_pet_dbState createState() => _Lost_pet_dbState();
}

class _Lost_pet_dbState extends State<Lost_pet_db> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text(
            'Lost Pet Database',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.white,
              fontFamily: 'Bitter',
            ), //TextStyle
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffaa295d),
      ),
      body: LostPetList(),
    );
  }
}


class LostPetList extends StatefulWidget {

  @override
  _LostPetListState createState() => _LostPetListState();
}

class _LostPetListState extends State<LostPetList> {

  List<LostAnimal> animal = new List();
  FirestoreService fs = new FirestoreService();
  StreamSubscription<QuerySnapshot> animalView;

  void initState(){
    super.initState();

    //animal = new List();

    animalView?.cancel();
    animalView = fs.getAnimalList().listen((QuerySnapshot snapshot){
      final List<LostAnimal> animals = snapshot.documents
          .map((documentSnapshot) => LostAnimal. fromMap(documentSnapshot.data)).toList();

      setState(() {
        //////////should set up filter to find only lost animals
        //animals.retainWhere((animals[0].status) => obj.toString().length == 3);
        //animals[0].status = 'Lost';
        List<LostAnimal> lostAnimals = new List();
        for (LostAnimal animal in animals){
          //print(animal.status);
          //print(animal.name + ': ' + animal.status);
          //String lost = 'Lost';
          if(animal.status == 'Lost') {
            lostAnimals.add(animal);
            //this.animal = animals;
          }
        }
        this.animal = lostAnimals;
      });
    });
  }

  //String id = Firestore.instance.collection('Animal').document().getId();


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

                  LostAnimal a1 = animal[index];  ///////////

                  return Stack(children: <Widget>[
                    Column(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left:20.0, right: 20.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 120.0,
                          child: Padding(
                            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                            child: Material(
                              color: Colors.white,
                              elevation: 14.0,
                              shadowColor: Color(0xffffc50d),
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(25.0, 15.0, 0.0, 15.0),
                                        //child: Icon(Icons.pets)
                                        child:Image.network('${animal[index].animalPic}', height: 60.0, width: 60.0),
                                      ),
                                      Column(
                                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            '${animal[index].name}',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24.0,
                                              fontFamily: 'Bitter',),
                                          ),

                                          Text(
                                            'Species: '+'${animal[index].species}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18.0),
                                          ),

                                          Text(
                                            'Gender: '+'${animal[index].sex}',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18.0),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 23.0),
                                        child: Column(
                                          children: <Widget>[

                                            FlatButton(
                                              onPressed: (){
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => new Lost_pet_profile(a1:new LostAnimal(a1.name, a1.age, a1.sex, a1.species, a1.breed, a1.status, a1.location, a1.animalPic, a1.description, a1.lonelyHearts, a1.adoptionFee))
                                                  ),
                                                );//
                                              },
                                              color: Color(0xffffc50d),
                                              child: Text(
                                                'Meet',
                                                style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontFamily: 'Bitter',
                                                ),
                                              ),
                                            ),
/*
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
*/
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
/*
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
        backgroundColor: Color(0xff96be04),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffaa295d),
        child: Icon(Icons.add),
        onPressed: () {
          //Navigator.push(context,MaterialPageRoute(builder: (context) => TaskScreen()),
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Lost_report(LostAnimal('', '', '', '', '','', 'Lost', '', '', '','','')),
                fullscreenDialog: true),
          );
        },
      ),
      */
    );

  }
}

