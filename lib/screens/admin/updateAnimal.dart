import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:project/screens/admin/newAnimal.dart';
import 'package:project/screens/admin/updateAnimal.dart';



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


                  FlatButton(
                    color: Color(0xff6b2978),
                    onPressed: () {
                      debugPrint("Edit Animal button clicked");
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return UpDateAnimal();
                      }));
                    }, //go to us
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
