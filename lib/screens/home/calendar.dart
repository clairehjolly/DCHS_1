import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calendar",
          style: new TextStyle(
            fontFamily: 'SourceSansPro',
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff6b2978),
      ),
      body: MyStatefulWidget(),
    );  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  final databaseReference = Firestore.instance;
  List events = new List();

  @override
  void initState() {
    super.initState();
    getData(0);

  }


  void getData(int type) async {

    events.clear();

    await databaseReference
        .collection("CalendarEvent")
        .getDocuments()
        .then((QuerySnapshot snapshot) {
      if (type == 0) {
        snapshot.documents.forEach((f) => {
          events.add(f.data),
        });
      } else {
        snapshot.documents.forEach((f) => {
          if (f.data['type'] == type) {
            events.add(f.data),
          }
        });
      }
    });
    List filter_events=new List();
    String a="";
    String max="";
    for(int i=0;i<events.length;i++) {

      a = events[i]['date'];
      if(i==0) {
        filter_events.add(events[0]);
      }
      if(a.compareTo(max)>0){
        filter_events.add(events[i]);
        max=events[i]['date'];
      }else{
       filter_events.insert(i-1,events[i]);

      }
      if (i + 1 == events.length) break;
    }
    filter_events.remove(events[0]);

    setState(() {
      this.events = filter_events;
    });
  }

  String dropdownValue = 'All';

  @override
  Widget build(BuildContext context) {


    final filterbutton = DropdownButton<String>(
      value: dropdownValue,
      style: TextStyle(
        fontSize: 20.0,
        color: Color(0xff6b2978),
        fontFamily: 'SourceSansPro',
      ),

      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
          if (newValue == "Puppy Preschool") {
            getData(1);
          } else if (newValue == "Dog Training 1") {
            getData(2);
          } else if (newValue == "Dog Training 2") {
            getData(3);
          } else if (newValue == "Volunteer") {
            getData(3);
          } else {
            getData(0);
          }
        });
      },

      items: <String>['All','Puppy Preschool', 'Dog Training 1', 'Dog Training 2', 'Volunteer']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),

    );

    return Scaffold(

      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0, bottom: 0.0),
            child: new Text("The Dane County Humane Society hosts a wide range of events of several types from classes to volunteer opportinities to fundraising events. Check them out below!",
              style: new TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSansPro'
              ),
            ),
          ),
          Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Filter Events: ",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xff6b2978),
                      fontFamily: 'SourceSansPro',
                    )
                ),
                filterbutton,
              ]
          ),
          Expanded(
            child:ListView.builder (
                itemCount: events.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Card(
                    color: Color(0xffaa295d),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Description: " + events[index]['description'],
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                          Text(
                            "Date: " + events[index]['date'],
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                          Text(
                            "Time: " + events[index]['time'],
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                          Text(
                            "Location: " + events[index]['location'],
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontFamily: 'SourceSansPro',
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                        ],
                      ),
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }
}



















