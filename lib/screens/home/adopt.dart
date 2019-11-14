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
            'Adopt',
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
  List<NewAnimal>temp_species;
  List<NewAnimal>temp_gender;

  FirestoreService fs = new FirestoreService();
  StreamSubscription<QuerySnapshot> animalView;
  String  _selectedName=null;
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
        this.temp_species=animal;
        this.temp_gender=animal;
      });
    });
  }
  List<NewAnimal> checkfilter(List <NewAnimal>filter,List<NewAnimal> temp,int flag){
    List<NewAnimal>res=new List<NewAnimal>();
    if(temp.isEmpty &&flag!=1) {
      if(filter.isEmpty) return res;
      else {
        return filter;
      }
    }
      if(filter.isEmpty) return res;

      switch(flag) {
        case 1:
          if(_selectedName==null) return filter;
          for (int i = 0; i < filter.length; i++) {
            var item = filter.elementAt(i);
            if (item.name.toLowerCase().compareTo(_selectedName)==0) {
              res.add(item);
            }
          }
          break;
        case 2:
          if(_selectedAge==null)return filter;
          for (int i = 0; i < filter.length; i++) {
            var item = filter.elementAt(i);
            if (item.age.compareTo(_selectedAge)==0) {
              res.add(item);
            }
          }
          break;
        case 3:
          if(_selectedGender==null)return filter;
          for (int i = 0; i < filter.length; i++) {
            var item = filter.elementAt(i);
            if (item.sex.compareTo(_selectedGender)==0) {
              res.add(item);
            }
          }
          break;
        case 4:
          if(_selectedSpecies==null)return filter;
          for (int i = 0; i < filter.length; i++) {
            var item = filter.elementAt(i);
            if ((item.species.compareTo(_selectedSpecies)==0)) {
              res.add(item);
            }
          }
          break;


      //List<NewAnimal>temp=animal;

      }

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
      backgroundColor: Colors.amberAccent,

      body: Column(

        children: <Widget>[
          new Container(

            width: 150,


          child:TextField(

            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15.0),
              hintText: 'Enter Name',hintStyle:  TextStyle( fontFamily: 'Bitter',fontWeight: FontWeight.bold),
            ),
            onChanged: (string) {

              setState(() {
              //  temp_name=animal;
                  filterAnimal = animal
                      .where((u) => (u.name
                      .toLowerCase()
                      .contains(string.toLowerCase())))
                      .toList();
//
               filterAnimal=checkfilter(filterAnimal,temp_name,1);
//             //   }
    });
             // filterAnimal=checkfilter(filterAnimal,temp_name,1);

            },
          ),
          ),
      new Container(

      child:DropdownButtonHideUnderline(
        child:ButtonTheme(
          alignedDropdown: true,
        child:DropdownButton(
          value: _selectedAge,
          items: _dropDownItem(),
          onChanged: (value) {
            _selectedAge = value;
            setState(() {


            temp_age = animal
                .where((u) =>
            (u.age.toLowerCase()
                .contains(value.toLowerCase())))
                .toList();
            filterAnimal = checkfilter(filterAnimal, temp_age, 2);
            });
           //filterAnimal = checkfilter(filterAnimal, temp_age, 2);
//              setState(() {
//                temp_age = filterAnimal;
//
//                filterAnimal = animal
//                    .where((u) =>
//                (u.age.toLowerCase()
//                    .contains(value.toLowerCase())))
//                    .toList();
//
//              //  filterAnimal = checkfilter(filterAnimal, temp_age, 2);
//                //  }
//              });

          },
       hint: Text('Select Age',style:TextStyle(fontFamily: 'Bitter', fontWeight: FontWeight.bold,)),
       ),
        ),
        ),
      ),
          new Container(

          child:DropdownButtonHideUnderline(
            child:ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton(
               value: _selectedSpecies,
               items: _dropDownItem2(),
                onChanged: (value){
               _selectedSpecies=value;
                 //  if(_selectedAge.isNotEmpty){
               setState(() {


                 temp_species = animal
                     .where((u) => (u.species.toLowerCase()
                     .contains(value.toLowerCase())))
                     .toList();
                 filterAnimal=checkfilter(filterAnimal,temp_species,4);
               });
                 // filterAnimal=checkfilter(filterAnimal,temp_species,4);
                 //  }

//                setState(() {
//                //  if(_selectedAge.isNotEmpty){
//               filterAnimal = animal
//                    .where((u) => (u.species.toLowerCase()
//                    .contains(value.toLowerCase())))
//                    .toList();
//                 // filterAnimal=checkfilter(filterAnimal,temp_species,4);
//                //  }
//              });
            },
            hint: Text('Select Species',style: TextStyle( fontFamily: 'Bitter',fontWeight: FontWeight.bold,),),
          ),
          ),
          ),
    ),
          new Container(

            child:DropdownButtonHideUnderline(
              child:ButtonTheme(
                alignedDropdown: true,
                child:DropdownButton(
                value: _selectedGender,
                items: _dropDownItem1(),
                onChanged: (value){
                 _selectedGender=value;
                 setState(() {
                 temp_gender = animal
                     .where((u) => (u.sex.toLowerCase()
                     .contains(value.toLowerCase())))
                     .toList();
                 });
                filterAnimal=checkfilter(filterAnimal,temp_gender,3);
//                 setState(() {
//                 filterAnimal = animal
//                    .where((u) => (u.sex.toLowerCase()
//                    .contains(value.toLowerCase())))
//                    .toList();
//                 //filterAnimal=checkfilter(filterAnimal,temp_gender,3);
//              });
            },
            hint: Text('Select Gender',style: TextStyle( fontFamily: 'Bitter',fontWeight: FontWeight.bold,)),
          ),
    ),
    ),
    ),
//          new FlatButton(
//            child: new Text(
//              "rrrrr", style: new TextStyle(fontSize: 16.0,
//                fontWeight: FontWeight.w600,fontFamily: 'Bitter'),),
//
//            onPressed: () {
//              setState(() {
//                filterAnimal = animal
//                    .where((u) => (u.
//                    .contains(value.toLowerCase())))
//                    .toList();
//
//              });
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => Calendar()),
//              );
//            },
//
//            // padding: EdgeInsets.all(0),
//            color: Colors.white,
//            // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
//
//
//          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: filterAnimal.length>0?filterAnimal.length:0,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[


                        Text(
                          filterAnimal[index].name,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff6b2978),
                            fontFamily: 'Bitter',
                          ),
                        ),
                        Text(
                          "Age: "+ filterAnimal[index].age,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff6b2978),
                            fontFamily: 'Bitter',
                          ),
                        ),
                        Text(
                          "Species: "+filterAnimal[index].species,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff6b2978),
                            fontFamily: 'Bitter',

                          ),
                        ),
                        Text(
                          "Gender: "+filterAnimal[index].sex,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff6b2978),
                            fontFamily: 'Bitter',
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