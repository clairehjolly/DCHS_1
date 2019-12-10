import 'package:flutter/material.dart';


class GV extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Group Volunteering',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 16.0,
            ),
          ),
        ),
        backgroundColor: Color(0xffffc50d),

      ),


      resizeToAvoidBottomInset: false,

      body: new SingleChildScrollView(

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child:            Text(
                'Group Volunteering',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Color(0xff6b2978),
                ),
              ),
            ),



            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child:            Text(
                  '\nDoes your team want to make a difference? Learn how you can help save lives of animals in need below!\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 18.0,
                  ),

                ),
            ),



            //Image.asset('img/i.png'),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child:            Text(
                  'Corporate Volunteer Experience\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
            ),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child:            Text(
                  'As corporate volunteers, you and your colleagues will learn about our mission and help save lives through hands-on animal experiences! During your 1.5-2 hours at our main shelter, your team will socialize with our adoptable animals, meet our education animals, help with essential tasks like treat preparation, and learn how you can continue to make a difference in the lives of the pets and people that rely on DCHS.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 16.0,
                  ),
                ),
            ),

          ],
        ),
      ),

    );
  }



}
