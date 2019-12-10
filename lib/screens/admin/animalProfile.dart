import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/admin/newAnimal.dart';



class AnimalProfile extends StatelessWidget {

  final NewAnimal anim;
  AnimalProfile({Key key,@required this.anim}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Center(
          child: Text(
            anim.name,
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 25.0,
            ),
          ),
        ),
        backgroundColor: Color(0xff96be04),
      ),

      resizeToAvoidBottomInset: false,

      body: new SingleChildScrollView(
        child:
//        child: new StreamBuilder(
//            stream: Firestore.instance.collection('Animal').snapshots(),
//            builder: (BuildContext context, snapshot){
//              if(!snapshot.hasData) return Text('Loading...');
              new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      child:
//                      Image.network(snapshot.data.documents[0]['_animalPic'], height: 300.0)
                        Image.network(anim.animalPic, height: 300.0,),

                  ),

                  new Container(
                    padding: const EdgeInsets.only(left: 70.0,bottom: 10.0),
                    child: new Text("Animal Information",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            letterSpacing: 2.0,
                            color:Color(0xff6b2978),
                            fontFamily: 'SourceSansPro'
                        )),
                  ),

                  Card(
                    color: Color(0xffaa295d),
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                    child: ListTile(
                      title: Text('Name: ' + anim.name,
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Card(
                    color: Color(0xffaa295d),
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                    child: ListTile(
                      title: Text('Age: ' + anim.age,
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Card(
                    color: Color(0xffaa295d),
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                    child: ListTile(
                      title: Text('Gender: ' + anim.sex,
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Card(
                    color: Color(0xffaa295d),
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                    child: ListTile(
                      title: Text('Species: ' + anim.species,
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Card(
                    color: Color(0xffaa295d),
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                    child: ListTile(
                      title: Text('Breed: ' + anim.breed,
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Card(
                    color: Color(0xffaa295d),
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                    child: ListTile(
                      title: Text('Status: ' + anim.status,
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Card(
                    color: Color(0xffaa295d),
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                    child: ListTile(
                      title: Text('Location: ' + anim.location,
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Card(
                    color: Color(0xffaa295d),
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                    child: ListTile(
                      title: Text('Adoption Fee: ' + anim.adoptionFee,
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Card(
                    color: Color(0xffaa295d),
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                    child: ListTile(
                      title: Text('Lonely Hearts: ' + anim.lonelyHearts,
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Card(
                    color: Color(0xffaa295d),
                    elevation: 2.0,
                    margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                    child: ListTile(
                      title: Text('Description: ' + anim.description,
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

//                  Padding(
//                    padding: EdgeInsets.only(left:0.0, right: 15.0),
//                    child:
//
//                    Text('Name: ' + snapshot.data.documents[0]['_name'],
//                        style: TextStyle(
//                            fontFamily: 'SourceSansPro',
//                            fontSize: 20.0
//                        )
//                    ),
//                  ),
//
//                  Padding(
//                    padding: EdgeInsets.only(left:0.0, right: 15.0),
//
//                    child: Text('Age: '+ snapshot.data.documents[0]['_age'],
//                        style: TextStyle(
//                            fontFamily: 'SourceSansPro',
//                            fontSize: 20.0
//                        )),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.only(left:0.0, right: 15.0),
//
//                    child: Text('Sex: '+ snapshot.data.documents[0]['_sex'],
//                        style: TextStyle(
//                            fontFamily: 'SourceSansPro',
//                            fontSize: 20.0
//                        )),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.only(left:0.0, right: 15.0),
//
//                    child: Text('Species: '+ snapshot.data.documents[0]['_species'],
//                        style: TextStyle(
//                            fontFamily: 'SourceSansPro',
//                            fontSize: 20.0
//                        )),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.only(left:0.0, right: 15.0),
//
//                    child: Text('Breed: '+ snapshot.data.documents[0]['_breed'],
//                        style: TextStyle(
//                            fontFamily: 'SourceSansPro',
//                            fontSize: 20.0
//                        )),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.only(left:0.0, right: 15.0),
//
//                    child: Text('Status: '+ snapshot.data.documents[0]['_status'],
//                        style: TextStyle(
//                            fontFamily: 'SourceSansPro',
//                            fontSize: 20.0
//                        )),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.only(left:0.0, right: 15.0),
//
//                    child: Text('Location: '+ snapshot.data.documents[0]['_location'],
//                        style: TextStyle(
//                            fontFamily: 'SourceSansPro',
//                            fontSize: 20.0
//                        )),
//                  ),
//
//                  Padding(
//                    padding: EdgeInsets.only(left:0.0, right: 15.0),
//
//                    child: Text('Description: '+ snapshot.data.documents[0]['_description'],
//                        style: TextStyle(
//                            fontFamily: 'SourceSansPro',
//                            fontSize: 20.0
//                        )),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.only(left:0.0, right: 15.0),
//
//                    child: Text('Lonely Hearts: '+ snapshot.data.documents[0]['_lonelyHearts'],
//                        style: TextStyle(
//                            fontFamily: 'SourceSansPro',
//                            fontSize: 20.0
//                        )),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.only(left:0.0, right: 15.0),
//
//                    child: Text('Adoption Fee: '+ snapshot.data.documents[0]['_adoptionFee'],
//                        style: TextStyle(
//                            fontFamily: 'SourceSansPro',
//                            fontSize: 20.0
//                        )),
//                  ),

                  FlatButton(
                    color: Color(0xff6b2978),
                    onPressed: (){},
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 22.0,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ),

                ],
                ),
              ),
            );
            }//
        //),
//      ),
//    );
//  }
}