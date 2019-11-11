import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project/screens/admin/firestoreService.dart';
import 'package:project/screens/admin/newAnimal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/screens/admin/animalProfile.dart';
import 'package:project/screens/admin/addAnimal.dart';



class adopt extends StatelessWidget {
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


class AnimalsListPage extends StatefulWidget {
  @override
  _AnimalsListPageState createState() => _AnimalsListPageState();
}
class _AnimalsListPageState extends State<AnimalsListPage> {

  List<NewAnimal> animal;
  List<NewAnimal>filterAnimal;
  List<NewAnimal>temp_name;
  List<NewAnimal>temp_age;

  FirestoreService fs = new FirestoreService();
  StreamSubscription<QuerySnapshot> animalView;
  String _selectedAge=null;
  String _selectedGender=null;
  String _selectedSpecies=null;


  @override
  void initState(){
    super.initState();

    animal = new List();
    filterAnimal=animal;

    animalView?.cancel();
    animalView = fs.getAnimalList().listen((QuerySnapshot snapshot){
      final List<NewAnimal> animals = snapshot.documents
          .map((documentSnapshot) => NewAnimal. fromMap(documentSnapshot.data)).toList();

      setState(() {
        this.animal = animals;
        this.filterAnimal=animal;
        this.temp_name=animal;
        this.temp_age=animal;
      });
    });
  }
  List<NewAnimal> checkfilter(List <NewAnimal>filterAnimal,List<NewAnimal> temp){
    List<NewAnimal>res;
    for(int i=0;i<filterAnimal.length;i++){
     var item=filterAnimal.elementAt(i);
     if(temp.contains(item)){
       res.add(item);
     }
    }
    //List<NewAnimal>temp=animal;



    return res;
  }
  List<DropdownMenuItem<String>> _dropDownItem(){
    var _age=['1','2','3','4','5','6','7','8','9','10','11','12'];
    return _age.map(
            (value)=>DropdownMenuItem(
          value: value,
          child: Text(value),
        )
    ).toList();
  }
  List<DropdownMenuItem<String>> _dropDownItem1(){
    var _gender=['Male','Female'];
    return _gender.map(
            (value)=>DropdownMenuItem(
          value: value,
          child: Text(value),
        )
    ).toList();
  }
  List<DropdownMenuItem<String>> _dropDownItem2(){
    var _Species=['Dog','Cat'];
    return _Species.map(
            (value)=>DropdownMenuItem(
          value: value,
          child: Text(value),
        )
    ).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adopt Page"),
      ),
      body: Column(
        children: <Widget>[
          TextField(

            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              hintText: 'Enter Name',
            ),
            onChanged: (string) {

              setState(() {
                temp_name=filterAnimal;
              //  if(string.isNotEmpty) {
                  filterAnimal = animal
                      .where((u) => (u.name
                      .toLowerCase()
                      .contains(string.toLowerCase())))
                      .toList();
                 // filterAnimal=checkfilter(filterAnimal,temp_name);
             //   }
              });

            },
          ),
      DropdownButton(
          value: _selectedAge,
          items: _dropDownItem(),
          onChanged: (value){
          _selectedAge=value;
                setState(() {
                  temp_age=filterAnimal;

          filterAnimal = animal
          .where((u) => (u.age.toLowerCase()
          .contains(value.toLowerCase())))
           .toList();
  //  }
       });
      },
       hint: Text('Select Age'),
       ),
          DropdownButton(
            value: _selectedSpecies,
            items: _dropDownItem2(),
            onChanged: (value){
              _selectedSpecies=value;
              setState(() {
                //  if(_selectedAge.isNotEmpty){
                filterAnimal = animal
                    .where((u) => (u.species.toLowerCase()
                    .contains(value.toLowerCase())))
                    .toList();
                //  filterAnimal=checkfilter(filterAnimal,temp_age);
                //  }
              });
            },
            hint: Text('Select Species'),
          ),
          DropdownButton(
            value: _selectedGender,
            items: _dropDownItem1(),
            onChanged: (value){
              _selectedGender=value;
              setState(() {
                filterAnimal = animal
                    .where((u) => (u.sex.toLowerCase()
                    .contains(value.toLowerCase())))
                    .toList();
              });
            },
            hint: Text('Select Gender'),
          ),
//            decoration: InputDecoration(
//              contentPadding: EdgeInsets.all(15.0),
//              hintText: 'ENTER AGE',
//            ),
//            onChanged: (string) {
//
//              setState(() {
//                filterAnimal = animal
//                    .where((u) => (u.age
//                    .toLowerCase()
//                    .contains(string.toLowerCase())))
//                    .toList();
//              });
//
//            },

          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: filterAnimal.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          filterAnimal[index].name,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}