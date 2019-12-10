import 'dart:async';
import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/admin/firestoreService.dart';
import 'package:project/screens/admin/newAnimal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screens/admin/animalProfile.dart';
import 'package:project/screens/admin/addAnimal.dart';


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
        centerTitle: true,
        title: Container(
          child: Text(
            'Animals',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 25.0,
            ), //TextStyle
          ),
        ),
        backgroundColor: Color(0xffaa295d),
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
       List<NewAnimal> animals = snapshot.documents
          .map((documentSnapshot) => NewAnimal. fromMap(documentSnapshot.data)).toList();
       List<NewAnimal>a=new List<NewAnimal>();


       for(NewAnimal anim in animals){
         if(anim.status!='Lost'&&!anim.name.contains("rehome")){
           a.add(anim);

         }
       }
       animals=a;

      setState(() {
        this.animal = animals;
      });
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffffc50d),

      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,

      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height-100,
              child: ListView.builder(
                  itemCount: animal.length,
                  itemBuilder: (context, index) {
                    NewAnimal anim;
                    anim = animal[index];
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
                                shadowColor: Color(0xff6b2978),
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Image.network('${animal[index].animalPic}', height: 80.0, width: 80.0),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          //crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[

                                            Text(
                                              '${animal[index].name}',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 24.0),
                                            ),
                                            Text(
                                              '${animal[index].species}',
                                              style: TextStyle(

                                                  color: Colors.black,
                                                  fontSize: 20.0),
                                            ),

                                            Text(
                                              '${animal[index].status}',
                                              style: TextStyle(

                                                  color: Colors.black,
                                                  fontSize: 16.0),
                                            ),

                                          ],
                                        ),
                                        Container(
                                          padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                                          child: Column(
                                            children: <Widget>[

                                              FlatButton(
//                                                onPressed: () {
//                                                  debugPrint("Edit Button Clicked" + index.toString());
//                                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
//                                                    return AnimalProfile();
//                                                  }));
//                                                },
                                                onPressed: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => new AnimalProfile(anim:new NewAnimal(anim.name, anim.age, anim.sex, anim.species, anim.breed, anim.status, anim.location,
                                                        anim.animalPic, anim.description, anim.lonelyHearts, anim.adoptionFee, anim.animalID))),
                                                  );//
                                                },
                                                color: Color(0xffffc50d),
                                                child: Text(
                                                  'Edit',
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontFamily: 'SourceSansPro',
                                                  ),
                                                ),
                                              ),

                                              FlatButton(
                                                onPressed: () async {
                                                  debugPrint("Delete Button Clicked");
                                                  //debugPrint();
                                                  debugPrint(anim.animalID);
                                                  await Firestore.instance.collection('Animal').document(anim.animalID).delete(); //

//                                                        await Firestore.instance.collection('Animal').snapshot.data
//                                                            .document('Mkg48sSQ7O5KqyVfj9Mn').delete(); // get autogenerated document id
                                                },
                                                color: Color(0xffffc50d),
                                                child: Text(
                                                  'Delete',
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontFamily: 'SourceSansPro',
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
      ),



      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff6b2978),
        child: Icon(Icons.add),
        onPressed: () {
          //Navigator.push(context,MaterialPageRoute(builder: (context) => TaskScreen()),
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => AddAnimal(NewAnimal('','', '', '','', '', '', '', '','','','')),
                fullscreenDialog: true),
          );
        },
      ),
    );


  }
}
