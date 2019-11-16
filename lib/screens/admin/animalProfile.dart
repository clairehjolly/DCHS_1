import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class AnimalProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Center(
          child: Text(
            'Animal Profile',
            style: TextStyle(
              fontFamily: 'Bitter',
              fontSize: 25.0,
            ),
          ),
        ),
        backgroundColor: Color(0xffaa295d),
      ),

      resizeToAvoidBottomInset: false,

      body: new SingleChildScrollView(
      child: new StreamBuilder(
        stream: Firestore.instance.collection('Animal').snapshots(),
        builder: (BuildContext context, snapshot){
          if(!snapshot.hasData) return Text('Loading...');
          return Column(

            //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Container(
                child: Image.network(snapshot.data.documents[0]['_animalPic'], height: 380.0, width: 420.0,)
              ),
              Padding(
                padding: EdgeInsets.only(left:0.0, right: 15.0),
                  child:

                   Text('Name: ' + snapshot.data.documents[0]['_name'],
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0
                      )
                  ),
              ),

              Padding(
                padding: EdgeInsets.only(left:0.0, right: 15.0),

                child: Text('Age: '+ snapshot.data.documents[0]['_age'],
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left:0.0, right: 15.0),

                child: Text('Sex: '+ snapshot.data.documents[0]['_sex'],
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left:0.0, right: 15.0),

                child: Text('Species: '+ snapshot.data.documents[0]['_species'],
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left:0.0, right: 15.0),

                child: Text('Breed: '+ snapshot.data.documents[0]['_breed'],
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left:0.0, right: 15.0),

                child: Text('Status: '+ snapshot.data.documents[0]['_status'],
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left:0.0, right: 15.0),

                child: Text('Location: '+ snapshot.data.documents[0]['_location'],
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    )),
              ),

              Padding(
                padding: EdgeInsets.only(left:0.0, right: 15.0),

                child: Text('Description: '+ snapshot.data.documents[0]['_description'],
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left:0.0, right: 15.0),

                child: Text('Lonely Hearts: '+ snapshot.data.documents[0]['_lonelyHearts'],
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(left:0.0, right: 15.0),

                child: Text('Adoption Fee: '+ snapshot.data.documents[0]['_adoptionFee'],
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    )),
              ),

              FlatButton(
                color: Color(0xff6b2978),
                onPressed: (){},
                child: Text(
                  'Edit Profile',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 24.0,
                      color: Colors.white,
                    ),
                ),
              ),
            ],
          );
        }
      ),
      ),
    );
  }
}


