import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:Text(
            'Frequently Asked Questions',
            style: TextStyle(
              fontFamily: 'Bitter',
              fontSize: 22.0,
            ),
          ),
        ),
        backgroundColor: Color(0xffffc50d),

      ),

      resizeToAvoidBottomInset: false,


      body: new SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[


            Text(
              'Frequently       Asked Questions',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff6b2978),

              ),
            ),

            Image.asset('img/FAQi.png'),


            ExpansionTile(
              title: Text(
                  'Minimum Age Requirement',
              style: TextStyle(
                fontFamily: 'Bitter',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff6b2978),
              ),
              ),
              children: <Widget>[
                Text(
                  'I am under the minimum age requirement for the position I am interested in. '
                      'Do you make exceptions to your minimum age rule?\n',
                      style:TextStyle(
                        fontFamily: 'Bitter',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
            ),
                ),

                Text(
                  'Most of our volunteer positions require volunteers to be at least 18 years of age. '
                      'There are some positions available for youth ages 8 to 17.\n\nFor the safety of '
                      'our volunteers and animals, we do not make exceptions to our age requirements. '
                      'However, we have many other ways for youth to support the animals and learn about '
                      'animal welfare.\n\nYouth can also consider having a parent apply to be a foster '
                      'volunteer. Although the primary volunteer must be 18 years of age, the entire family '
                      'can participate in the fostering experience.\n\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Training & Prior Experience',
                style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffaa295d),
                ),
              ),
              children: <Widget>[
                Text(
                  'Will I have training before I start volunteering?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'Yes! Each role has training sessions that cover all aspects of '
                      'the volunteer role. Training is done with both staff and volunteer mentors. '
                      'The time it takes to complete training varies based on volunteer availability, '
                      'training schedules, and the specific training needs of the volunteer role.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'Do I need to have experience to volunteer?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'We supply all the training needed for most of our entry-level positions; '
                      'any exceptions are noted on the position descriptons. For our advanced '
                      'volunteer positions, we require and provide additional training. No prior '
                      'experience is needed to volunteer in our entry level positions, but we do '
                      'require all volunteers to have good communication skills and a willingness to '
                      'learn. Volunteers must be able to read and understand written instructions and '
                      'be able to communicate with staff and other volunteers both orally and in '
                      'writing. Once trained our volunteers work independently and must be proactive '
                      'in asking questions or seeking help when needed. We frequently update our protocols '
                      'to improve our care practices, and volunteers need to be proactive in learning these '
                      'changes without one-on-one staff guidance. Volunteers must be proactive and comfortable '
                      'in communicating with staff and fellow volunteers about any questions or concerns.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.arrow_downward, color: Color(0xffaa295d)),
            ),

            ExpansionTile(
              title: Text(
                'Time Commitment',
                style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff96be04),
                ),
              ),
              children: <Widget>[
                Text(
                  'How often do I need to volunteer?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'We require volunteers to fill a regularly scheduled shift at least once per week. '
                      'Volunteers are welcome to work more often if there is a need for shift coverage,'
                      ' either in a regularly scheduled shift or by picking up open shifts online. '
                      'Volunteer shifts typically range from 2-4 hours.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'Why do you ask for a six-month commitment?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'In order to provide the animals in our facilities the best care and support, '
                      'we do require volunteers to commit to six months of volunteering on a regular '
                      'schedule. This requirement helps us ensure quality training and consistent '
                      'volunteer coverage. We do allow for vacations and needed days off and can place '
                      'volunteers on a temporary leave of absence for periods of extended absences.'
                      '\n\nExceptions to this are Wildlife Center volunteers who must commit to volunteer'
                      ' through mid-October, the end of our busy season; and Adoption Assistants who '
                      'must commit to a minimum of one year.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.arrow_downward, color: Color(0xff96be04)),
            ),

            ExpansionTile(
              title: Text(
                'Volunteering with a Job Coach',
                style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Text(
                  'I am not able to volunteer independently. Can I bring a helper with me when I '
                      'volunteer?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'Yes, you can volunteer with a job coach you choose who can be a friend, family member or '
                      'professional from a local organization. You and your job coach will work together as a '
                      'volunteer team to assist care staff with the overall care of DCHS animals including '
                      'spot cleaning, dish washing, laundry and animal socialization; all of which will help '
                      'to make each animal’s stay at the shelter more enriching and less stressful. It is the '
                      'job coach’s responsibility to insure that all DCHS protocols are followed and they are '
                      'considered your guardian while they are assisting you while at DCHS.You and your job coach'
                      ' must fill out separate volunteer applications, attend a New Volunteer Orientation together '
                      'and each pay the 20 administrative/supply fee if you choose to volunteer. \n\nYou and your job '
                      'coach must commit to at least one 2-hour shift per week for a minimum of six months. The same '
                      'job coach must partner with you from week to week. If your job coach must leave before the six '
                      'months is over, a replacement can take over. The replacement job coach must fill out a DCHS '
                      'volunteer application, attend the volunteer orientation, pay 20 fee and attend all trainings. '
                      'You will be required to attend the trainings with your new job coach. We do not allow a job coach'
                      ' to be assisting more than one person at any one time.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Volunteer Shifts & Rescheduling',
                style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffaa295d),
                ),
              ),
              children: <Widget>[
                Text(
                  'When are the volunteer shifts?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'Each volunteer position may have slightly different volunteer scheduling and shifts.'
                      ' Typically shifts are 2-4 hours depending on role and could be any day of the week. \n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'Volunteers are scheduled a minimum of one shift every week. What happens if I want'
                      ' to go on vacation?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'We understand that life can be busy and have made our scheduling process as '
                      'flexible as we are able. To make scheduling easy to manage, volunteers have '
                      'a set schedule working the same shift time on the same day of the week. '
                      'Volunteers manage their own schedules online and we allow for regular vacations'
                      ' and pre-arranged shift adjustments. When removing themselves from the schedule,'
                      ' we ask volunteers to pick up a make-up shift.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.arrow_downward, color: Color(0xffaa295d)),
            ),

            ExpansionTile(
              title: Text(
                'Fees',
                style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff96be04),
                ),
              ),
              children: <Widget>[
                Text(
                  'Why do you have a 20 volunteer fee?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'Our 20 fee helps DCHS as a non-profit cover our non-animal related expenses.  '
                      'It helps to offset the costs involved in our orientation process as well '
                      'as covering the cost of your volunteer t-shirt, name badge and role-specific '
                      'training packets. Financial hardship scholarships may be available on a '
                      'case-by-case basis.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.arrow_downward, color: Color(0xff96be04)),
            ),

            ExpansionTile(
              title: Text(
                'Email',
                style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Text(
                  'I don’t have a computer or email. Why can''t I volunteer without an email account?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'DCHS has almost 900 active volunteers. The most cost-effective way for us to '
                      'communicate with volunteer applicants and our current volunteers is with '
                      'online services and email. Using email and online scheduling saves money on '
                      'postage and printing costs and helps to keep our program viable and efficient. '
                      'For this reason, we require that all volunteers have online access and a '
                      'current email address. The only exception to this is youth volunteering with '
                      'an adult; only the adult is required to have an email in this situation.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Community Service Hours',
                style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffaa295d),
                ),
              ),
              children: <Widget>[
                Text(
                  'Do you accept court-ordered community service hours?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'We do not accept court-ordered community service volunteers. We are not '
                      'able to sign off on court-ordered service hours through our regular '
                      'volunteer program.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.arrow_downward, color: Color(0xffaa295d)),
            ),

            ExpansionTile(
              title: Text(
                'Short-term Positions',
                style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff96be04),
                ),
              ),
              children: <Widget>[
                Text(
                  'Do you have short-term or summer volunteer positions available?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'Due to limited resources and the required training for each volunteer position, '
                      'we are not able to offer short-term volunteering experiences.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.arrow_downward, color: Color(0xff96be04)),
            ),

            ExpansionTile(
              title: Text(
                'Group Volunteering',
                style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Text(
                  'I have a group that is interested in volunteering. What do you have '
                      'available for group volunteering?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'We have limited opportunities for group volunteer projects at the shelter but '
                      'there are many other ways that groups can assist us. ',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Dog Walking',
                style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffaa295d),
                ),
              ),
              children: <Widget>[
                Text(
                  'I just want to walk the dogs. Why does that require so much training?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'Walking the dogs actually involves more than just walking the dogs. We want to '
                      'make sure the animals consistently receive a high-quality level of care and '
                      'stay as healthy as possible. To do this, we need to teach volunteers about '
                      'safety procedures and protocols that are currently in place to limit the transfer'
                      ' of disease within our shelters. We also want to educate our volunteers on how '
                      'to correctly interact with our shelter animals in order to reduce stress on the'
                      ' animals and keep volunteers safe as they handle dogs that require varying levels'
                      ' of handling skills.\n\nAll volunteers attend the specific training required for'
                      ' their volunteer role. Volunteer training includes the duties required for the '
                      'role, safety procedures and protocols required and animal handling.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'I’m an avid runner. Can I take DCHS dogs out for a run during my volunteer shift?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'As with people, dogs need to slowly build up muscle strength and endurance in order to '
                      'avoid potential injury when running or jogging. The dogs on our adoption floor '
                      'have not had the training needed to prevent injury or to build the endurance to '
                      'sustain them on runs. To avoid injury, we do not allow running or jogging.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.arrow_downward, color: Color(0xffaa295d)),
            ),

            ExpansionTile(
              title: Text(
                'Fostering',
                style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff96be04),
                ),
              ),
              children: <Widget>[
                Text(
                  'If I am fostering, do I get to choose the foster animals I bring home?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'Communications about animals that are available for foster go out via email '
                      'to all current foster volunteers from the Foster Coordinator. These animals '
                      'are placed into homes on a first-come, first-served basis. Foster volunteers '
                      'are never expected to take an animal that is not a good fit for their home or'
                      ' family.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.arrow_downward, color: Color(0xff96be04)),
            ),
            ExpansionTile(
              title: Text(
                'Special Events',
                style: TextStyle(
                  fontFamily: 'Bitter',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Text(
                  'What if I only want to work special events?\n',
                  style:TextStyle(
                    fontFamily: 'Bitter',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6b2978),
                  ),
                ),

                Text(
                  'You may choose to volunteer only for special events. You will still need '
                      'to complete an application and attend an orientation. You would then '
                      'be placed on a list and contacted via email each time there is a need '
                      'for Special Event volunteers.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    color: Color(0xff6b2978),
                  ),
                ),

              ],
              trailing: Icon(Icons.arrow_downward, color: Color(0xff6b2978)),
            ),

          ],
        ),
      ),
    );
  }
}

