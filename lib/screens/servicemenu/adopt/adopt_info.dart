import 'package:flutter/material.dart';
import 'package:project/screens/admin/newAnimal.dart';
import 'package:url_launcher/url_launcher.dart';


class adopt_info extends StatelessWidget {
  final NewAnimal a1;
  adopt_info({Key key,@required this.a1}):super(key:key);
  @override
  Widget build(BuildContext context) {


    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),//Top, Right, Bottom, Left
      child: new Row(
        children: <Widget>[
          new Container(      /// for yutai's outreach.dart
            child: Text("adopt info",
              style: TextStyle(
                  color: Colors.white),
            ),/////
          ),
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text("adopt info",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color:Color(0xff6b2978),
                          fontFamily: 'Bitter'
                      )),
                ),
                //Need to add space below this Text ?
                new Text("age: "+a1.age,
                  style: new TextStyle(
                      color: Colors.grey[850],
                      fontSize: 16.0,
                      fontFamily: 'Bitter'
                  ),
                ),
                new Text("gender: "+a1.sex,
                  style: new TextStyle(
                      color: Colors.grey[850],
                      fontSize: 16.0,
                      fontFamily: 'Bitter'
                  ),
                ),
                new Text("species: "+a1.species,
                  style: new TextStyle(
                      color: Colors.grey[850],
                      fontSize: 16.0,
                      fontFamily: 'Bitter'
                  ),
                ),new Text("status: "+a1.status,
                  style: new TextStyle(
                      color: Colors.grey[850],
                      fontSize: 16.0,
                      fontFamily: 'Bitter'
                  ),
                ),new Text("location: "+a1.location,
                  style: new TextStyle(
                      color: Colors.grey[850],
                      fontSize: 16.0,
                      fontFamily: 'Bitter'
                  ),
                ),new Text("adoption fee: "+a1.adoptionFee,
                  style: new TextStyle(
                      color: Colors.grey[850],
                      fontSize: 16.0,
                      fontFamily: 'Bitter'
                  ),
                ),
                new Text("Description: "+a1.description,
                  style: new TextStyle(
                      color: Colors.grey[850],
                      fontSize: 16.0,
                      fontFamily: 'Bitter'
                  ),
                ),

                GestureDetector(child:new Text("\nFind out how to sponsor adoptable animals like "+a1.name,
                  style: new TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 20.0,
                    fontFamily: 'Bitter',
                    decoration: TextDecoration.underline,


                  ),

                ),
                  onTap: (){
                    launch("https://www.giveshelter.org/how-to-help/donate/animal-sponsorship");
                  },

                ),
              ],
            ),
          ),
        ],
      ),
    );


    return  new Scaffold(
      appBar: AppBar(
        title: Text(a1.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
            fontFamily: 'Bitter',
          ),
        ),
        centerTitle: true,

        backgroundColor: Color(0xff6b2978),
      ),
      body: new SingleChildScrollView(

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset('img/dchslogo3.png'),
            Image.network(a1.animalPic, height: 300.0,),
            titleSection,

          ],
        ),
      ),
  /*r
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
        backgroundColor: Color(0xffaa295d),
      ),
*/
    );
  }
}