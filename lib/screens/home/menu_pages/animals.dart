import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screens/home/menu_pages/animalProfile.dart';


//HAVE ANIMAL LISTED HERE LATER

//class Animals extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//
//      appBar: AppBar(
//        title: Center(
//          child: Text(
//            'Animals',
//            style: TextStyle(
//              fontFamily: 'Bitter',
//              fontSize: 25.0,
//            ), //TextStyle
//          ),
//        ),
//        backgroundColor: Color(0xff6b2978),
//      ),
//      body: new Center(
//        child: Column(
//            children: <Widget>[
//              Container(
//                color: Color(0xffffc50d),
//                child: Text(
//                  'This is the Animal Class: show animal list',
//                  style: TextStyle(
//                    fontFamily: 'Bitter',
//                    fontSize: 20.0,
//                  ),
//                ),
//              ),
//            ]
//        ),
//      ),
//    );
//  }
//}

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
      bottomNavigationBar: BottomAppBar(
        child: FlatButton(
          onPressed: () {
            debugPrint("Add Animal Button Clicked");
//                     Navigator.push(context, MaterialPageRoute(builder: (context) {
//                        return Animals();
//                      }));
          },
          color: Color(0xffaa295d),
          child: Text(
            'Add Animal',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Bitter',
            ),
          ),
        ),
      ),

    );  }
}

//To display the list of animals
class AnimalsListPage extends StatefulWidget {
  @override
  _AnimalsListPageState createState() => _AnimalsListPageState();
}

class _AnimalsListPageState extends State<AnimalsListPage> {

  Future getAnimals() async{
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("Animal").getDocuments();
    return qn.documents;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: getAnimals(),
          builder: (_, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: Text("Loading..."),
          );
        }
        else {
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (_, index) {
                return ListTile(
                  leading: Icon(Icons.pets),
                  title: Text(snapshot.data[index].data['name']),
                  subtitle: Text(snapshot.data[index].data['animalID']),

                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Container(
                        width: 70.0,
                        height: 17.0,

                        child: FlatButton(
                        onPressed: () {
                          debugPrint("Edit Animal Button Clicked");
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return AnimalProfile();
                      }));
                        },
                        color: Color(0xffffc50d),
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: 'Bitter',
                          ),
                        ),
                      ),
                      ),
                      new Container(
                      width: 70.0,
                      height: 17.0,

                      child: FlatButton(
                        onPressed: () {
                          debugPrint("Delete Animal Button Clicked");
//                      Navigator.push(context, MaterialPageRoute(builder: (context) {
//                        return Animals();
//                      }));
                        },
                        color: Color(0xff96be04),
                        child: Text(
                          'Delete',
                          style: TextStyle(
                            fontSize: 10.0,
                            fontFamily: 'Bitter',
                          ),
                        ),
                      ),
                      ),
                    ],
                  ),

                );

          });
        }
    }),
    );
  }
}

//To display animal details when the animal is tapped
class AnimalsDetailPage extends StatefulWidget {
  @override
  _AnimalsDetailPageState createState() => _AnimalsDetailPageState();
}

class _AnimalsDetailPageState extends State<AnimalsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

