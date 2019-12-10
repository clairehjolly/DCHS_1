import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';

class ApplicationProcess extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Application Process',
            style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontSize: 25.0,
            ),
          ),
        ),
        backgroundColor: Color(0xff96be04),

      ),
      body: new Center(

        child: ListView(
          children: <Widget>[


//          Card(
//            child:
//              Text(
//              'Apply Now',
//              textAlign: TextAlign.center,
//
//              style: TextStyle(
//                    fontSize: 40.0,
//                    fontWeight: FontWeight.bold,
//                    fontFamily: 'SourceSansPro',
//                    color: Color(0xffaa295d),
//                  ),
//            ),
//          ),

           Image.asset('img/AP.jpg'),
            Card(
              child: ExpansionTile(
                leading: Icon(Icons.looks_one, size: 35.0, color: Color(0xffaa295d)),
                title: Text(
                  'Submit your Application',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                children: <Widget>[
                  Text(
                    '\nPlease review and consider the many volunteer opportunities that are available '
                        'and identify the top 3-6 positions you would be interested in. Then, download '
                        'and complete a volunteer application.\n\n Print when complete, sign and initial '
                        'page 2 before submitting. You can mail, fax, email or drop off the application '
                        'at the DCHS Main Shelter. See contact information on application.\n',
                    style:TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 18.0,
                    ),
                  ),

                ],
                trailing: Icon(Icons.keyboard_arrow_down),

              ),
            ),

            //Icon(Icons.arrow_downward, size: 40.0, color: Color(0xffaa295d)),

            Card(
              child: ExpansionTile(
                leading: Icon(Icons.looks_two, size: 35.0, color: Color(0xffaa295d)),
                title: Text(
                  'Submit an Essential Job Requirements Inventory',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                children: <Widget>[
                  Text(
                    '\nThis will help us evaluate your ability to perform certain volunteer positions. '
                        'DCHS welcomes volunteers of all ability levels to the extent that it is safe '
                        'to do so.\n\n After we receive your application and Essential Job Requirement '
                        'Inventory, we will compare them with our available volunteer opportunities '
                        'and if we find that your application matches our needs, we will invite you to '
                        'a Volunteer Orientation. If a match is not made, we''ll ask that you continue '
                        'to review our website and reapply when our volunteer needs have changed.\n',
                    style:TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 18.0,
                    ),
                  ),

                ],
                trailing: Icon(Icons.keyboard_arrow_down),

              ),
            ),

           // Icon(Icons.arrow_downward, size: 40.0, color: Color(0xffaa295d)),

            Card(
              child: ExpansionTile(
                leading: Icon(Icons.looks_3, size: 35.0, color: Color(0xffaa295d)),
                title: Text(
                  'Check your Email',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                children: <Widget>[
                  Text(
                    '\nWe will reply to your application by email within 1-2 weeks of receiving it. '
                        'If your email system uses SPAM filters you can prevent these filters from '
                        'blocking our email messages to you by adding our Volunteer department email '
                        'addresses to your ''safe sender list' 'or' 'white list.''\n\nWe suggest you'
                        ' add the two email addresses below into your email system''s address book.\n\n'
                        'nwomack@giveshelter.org\n\nvolunteer@giveshelter.org\n\nIf you do not receive'
                        ' an email reply from us within two weeks, contact us at either email listed above.\n',
                    style:TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 18.0,
                    ),
                  ),

                ],
                trailing: Icon(Icons.keyboard_arrow_down),

              ),
            ),

           // Icon(Icons.arrow_downward, size: 40.0, color: Color(0xffaa295d)),

            Card(
              child: ExpansionTile(
                leading: Icon(Icons.looks_4, size: 35.0, color: Color(0xffaa295d)),
                title: Text(
                  'Attend a Volunteer Orientation for New Volunteers',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                children: <Widget>[
                  Text(
                    '\nAt orientation, you will be taken on a tour of the shelter to get an insider''s '
                        'look at the work that goes into animal care at DCHS. You''ll learn about our'
                        ' programs and policies so you can start your volunteer work equipped with the'
                        ' information you need to successfully contribute to our mission.\n\n At the end'
                        ' of the orientation, if you decide we are the right fit for you, we will '
                        'collect a 20 processing/supply fee for each individual who will be volunteering'
                        ', which includes both adult and youth volunteers. Financial hardship scholarships'
                        ' may be available on a case-by-case basis. You will receive a name badge, an '
                        'official DCHS volunteer t-shirt and role-specific training packets.\n',
                    style:TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 18.0,
                    ),
                  ),

                ],
                trailing: Icon(Icons.keyboard_arrow_down),

              ),
            ),

            //Icon(Icons.arrow_downward, size: 40.0, color: Color(0xffaa295d)),

            Card(
              child: ExpansionTile(
                leading: Icon(Icons.looks_5, size: 35.0, color: Color(0xffaa295d)),
                title: Text(
                  'Attend Training for your Volunteer Position',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                children: <Widget>[
                  Text(
                    '\nPYou will meet with a designated staff member or volunteer who will provide '
                        'hands-on training in your new role and finalize your volunteer schedule.\n\n '
                        'After these steps are completed, you''re ready to volunteer! Please be aware '
                        'that this entire process can take up to 1-2 months, depending on timing,'
                        ' position desired and other factors, so we appreciate your patience and hope '
                        'that your commitment to volunteering remains strong. Thank you for your interest '
                        'in joining our volunteer team!\n',
                    style:TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 18.0,
                    ),
                  ),

                ],
                trailing: Icon(Icons.keyboard_arrow_down),

              ),
            ),

          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
        backgroundColor: Color(0xff96be04),
      ),
    );
  }
}
