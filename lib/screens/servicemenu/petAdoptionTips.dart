import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';


class PAT extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:
          Text(
            'Pet Adoption Tips',
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
        child: new Column(
          children: <Widget>[

            Container(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top:10.0),
              child:            Text(
                'ADOPTION PROCESS',
                style: TextStyle(
                  fontSize: 36.0,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.2,
                  color: Color(0xff6b2978),
                ),
              ),
            ),


            Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child:            Text(
                  'A variety of companion animals are waiting at Dane County Humane Society for a special home like yours! Whether you are interested in a cat or a dog, a critter or a horse, DCHS has friendly and knowledgeable Adoption Counselors waiting to help you find the best match for your family. The adoption process is simple so come see us today!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    fontFamily: 'SourceSansPro',
                  ),
                ),

            ),

            Image.asset('img/pat.png'),

            Card(
              child: ExpansionTile(
                leading: Icon(Icons.looks_one, size: 30.0, color: Color(0xff96be04)),
                title: Text(
                  'Before you visit',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.5),
                      child:                  Text(
                        'You''ve already taken the first step by looking for your new best friend in our online listings. If you see an animal online and would like more details before you visit, call our Adoption Center at (608) 838-0413 ext. 145. Staff are available to answer phone calls or return voicemails starting at 11:30 am each day.\n\nIt is important to discuss the adoption with all members of your household to confirm that everyone agrees with adopting a new pet. If you rent, you should also discuss the adoption with your landlord and make sure you understand any pet policies your landlord has. \n',
                        style:TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 18.0,
                        ),
                      ),
                  ),


                ],
                trailing: Icon(Icons.keyboard_arrow_down),

              ),
            ),

            Card(
              child: ExpansionTile(
                leading: Icon(Icons.looks_two, size: 30.0, color: Color(0xff96be04)),
                title: Text(
                  'Meeting the animals',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.5),
                      child:                  Text(
                        'The adoption process generally takes at least an hour and wait times at the Main Shelter can vary from 20 minutes to 3 hours during peak times. We cannot guarantee that guests arriving after 6 pm on weekdays or 4 pm on weekends will be able to meet with a pet because the last hour of the day is reserved for adopters who are scheduled to pick up their new best friend. During our busiest times, we may need to stop checking in clients prior to these times in order to accommodate potential adopters who are already on the waiting list. We strongly suggest coming in during non-peak hours (weekday afternoons) as it reduces the potential for long waits. Saturday and Sunday afternoons are our busiest times with the potential for lengthy waits.\n\nPlease do not bring your current pet with you when you come to visit shelter animals. For health and safety reasons, we do not allow members of the public to bring their personal pets into the kennel areas and we do not have staff available to hold your pets for you while you visit.\n\nAvailable animals are met with on a first come, first served basis. During our busiest times, we may ask you to limit your visit to two animals. DCHS is not able to call adopters when specific breeds or types of animals come in. We encourage adopters to monitor the available animals on this website, which is updated approximately every 15 minutes. \n',
                        style:TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 18.0,
                        ),
                      ),
                  ),


                ],
                trailing: Icon(Icons.keyboard_arrow_down),

              ),
            ),

            Card(
              child: ExpansionTile(
                leading: Icon(Icons.looks_3, size: 30.0, color: Color(0xff96be04)),
                title: Text(
                  'Adopting your new pet',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.5),
                      child:                  Text(
                        'Prior to meeting with an animal, we will ask you to complete a short adoption questionnaire. An Adoption Counselor will then help you meet with the animals you selected. We will share with you all of the animal''s medical and behavioral information and explain their future needs. We will answer all of your questions and ask about your preferences, expectations and experience in order to do our best to help you find an animal that is a good match for your family.\n\nWhile we encourage the entire household to meet with a potential pet, for most of our animals, this is a recommendation and not a requirement. We generally do not encourage or require dog to dog meet and greets due to the stress of the shelter environment but are happy to discuss this further with you and give you tips on how to do this successfully at home.\n\nAnimals that have been cleared medically are able to go home the same day! If, after counseling, you are ready to take your new pet home, we will review your pet''s medical documents and have you read and sign an adoption agreement. We will also send you home with a small supply of the food your pet has been eating in order to get you started. \n',
                        style:TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 18.0,
                        ),
                      ),
                  ),


                ],
                trailing: Icon(Icons.keyboard_arrow_down),

              ),
            ),


            Card(
              child: ExpansionTile(
                leading: Icon(Icons.looks_4, size: 30.0, color: Color(0xff96be04)),
                title: Text(
                  'Adoption Fees and Holds',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.5),
                      child:                  Text(
                        'Adoption fees for dogs and cats include spay or neuter surgery, age appropriate vaccinations, flea and tick treatment, heartworm testing for dogs and other vaccines and veterinary care as needed.\n\n',
                        style:TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 18.0,
                        ),
                      ),
                  ),


                ],
                trailing: Icon(Icons.keyboard_arrow_down),

              ),
            ),


            Card(
              child: ExpansionTile(
                leading: Icon(Icons.looks_5, size: 30.0, color: Color(0xff96be04)),
                title: Text(
                  'Taking your new pet home',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.5),
                      child: Text(
                        'Congratulations! You are ready to head home with your new pet! Dogs must go home with their own leash and collar. (Slip leashes, choke chains, prong collars and harnesses do not qualify.) Cats and critters must go home in secure carriers.\n\nLeashes, collars, carriers and more are available for purchase at our adoption centers or you may bring your own with you when you pick up. Proceeds of sales at our main Adoption Center support the lifesaving work of Dane County Humane Society!\n',
                        style:TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 18.0,
                        ),
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
        backgroundColor: Color(0xffaa295d),
      ),


    );
  }
}
