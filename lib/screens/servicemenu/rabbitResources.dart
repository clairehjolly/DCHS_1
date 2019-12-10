import 'package:flutter/material.dart';
import 'package:project/screens/home/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';


class Rabbits extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child:
          Text(
            'Rabbits',
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
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:5.0),
              child: Text(
                'RABBIT CARE & BEHAVIOR RESOURCES',
                style: TextStyle(
                  fontSize: 36.0,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
              child:            Text(
                'We are here to connect you with the resources you need to address '
                    'care and behavior issues with your rabbit companion.',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSansPro',
                ),
              ),
            ),


            Image.asset('img/resourcesMain.png'),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                child:            Text(
                  '\nIf you don''t find the answers you are seeking after reviewing these '
                      'links, please call us at (608) 838-0413 ext. 100.',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
              child:            Text(
                'Rabbits make friendly and quiet house pets and can even be '
                    'house-trained! The average lifespan for a bunny is 8-12 years, but there '
                    'are records of rabbits living up to 15 years of age. The following '
                    'information is designed to help you take good care of your pet and'
                    ' enjoy a happy, healthy life with them.',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 18.0,
                ),
              ),
            ),



            Text(
              'Diet',
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
                color: Color(0xff6b2978),
              ),
            ),


            ExpansionTile(
              title: Text(
                'Rabbit Pellets',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[

                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'The pellets should be high in fiber (at least 18%) and purchased fresh.'
                          ' Old, stale pellets can be a reason that a bunny stops eating. '
                          'Do not keep pellets more than two months, even refrigerated. '
                          'Once you find a good brand, stay with it as rabbits will sometimes'
                          ' stop eating if they are given a different kind of pellet.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Loose Non-Alfalfa Hay',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[

                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'Examples of loose, non-alfalfa hay include brome, Timothy, straw and various grass hays. Large quantities should be offered daily. This should be loose hay, not the pressed blocks. Loose Timothy hay is available in many pet stores in the area and is a good choice. The hay is an essential source of nutrients and is needed to ensure proper digestion and to help prevent impaction in the stomach and intestines. Alfalfa hay has too much calcium to be a healthy food for adult rabbits.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Fresh Foods',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[

                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'Dark lettuce, such as Romaine (no Iceberg), carrots and carrot tops, parsley, dandelions (unsprayed), radish tops, cilantro, broccoli, endive, bok choy, green pepper may be given daily. Give about the same amounts of fresh food as pellets. Do not give baby bunnies fresh greens as they can disturb the maturing digestive systems.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Treat Foods',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[

                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'Commercial rabbit treats fall into several categories: processed cereal kibble, mueslix (dried seed/fruit/veggie mixes), cereal/veggie blends and candies/sugars. All of these are lower in fiber and higher in fat and sugar than is safe for rabbits. Never buy pellets that contain seeds, nuts or starch-rich cereal kibble mixed in. These foods lead to obesity, gastrointestinal stasis and disease. To add variety to your bunny''s diet, give him safe veggies and lots of non-alfalfa hay.\n\n What about people food like cheerios, crackers or bread? These are generally not a good idea. While bunnies love them, and in small amounts they are probably not a problem, research has shown that high starch and low fiber diets are two things that contribute to diarrhea and/or the formation of hairballs, which can be dangerous in rabbits.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),


            ExpansionTile(
              title: Text(
                'Water',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'Water should always be available. It should be fresh and changed daily. It may be offered in a bowl (make sure it is heavy, so the rabbit will not knock it over) or a water bottle. Some rabbits will prefer one over the other, so while you''re getting to know your new rabbit, offer both.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Chewing Material',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'A rabbit''s teeth are constantly growing, and they need to wear them down by chewing. Straw, untreated willow baskets, apple, pear, willow branches (unsprayed) and pine wood scraps all serve this need well. Wood chews are also sold in pet stores for this purpose.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Vitamins, Salt or Mineral Block',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'These are not necessary if the rabbit is getting even small amounts of pellets.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),


            ExpansionTile(
              title: Text(
                'Digestive Enzymes',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'Fresh pineapple or papaya, which contain digestive enzymes, may help in the prevention of stomach hairballs and impaction. They must be fresh, not canned, in order to contain the essential enzyme. They may be offered once or twice weekly in small amounts. Another good source of digestive enzymes is Prozyme, available through pet supply stores or your veterinarian. Papaya tablets are not recommended if they contain high amounts of sugar or fructose.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),


            ExpansionTile(
              title: Text(
                'Laxative for Hairballs',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'Cat laxative may also be helpful in the prevention of excessive fur in the stomach of the rabbit. It coats the fur and lubricates it to allow passage into the intestinal tract. We recommend the use of a cat laxative once weekly at 1 cc/pound (or l"/pound) of bunny''s body weight. We also recommend it when the rabbit has eaten foreign substances that might cause impaction, such as carpeting.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),


            ExpansionTile(
              title: Text(
                'Night Feces',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(

                      'You may observe your rabbit cleaning the anal area and actually eating some of his droppings in the process. These droppings are usually softer and greener than their normal "waste" droppings. Your pet knows when they will produce these special stools and takes care of them themselves. They are rich in vitamins and are essential for the rabbit to stay in good health. Do not be concerned if you see this activity; it is a vital part of his good health.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            Text(
              'Housing',
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
                color: Color(0xff6b2978),
              ),
            ),

            ExpansionTile(
              title: Text(
                'Cage',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:               Text(
                      'A wire or wooden frame cage may be used with a wire flooring of approximately 14-gauge wire (1" X 1/2" square openings). One solid floored area should be provided for resting and for preventing sore hocks. Never use aquariums or solid walled cages, as the lack of sufficient air circulation has been directly correlated with an increase in respiratory disease. The cage should be about four times the size of the rabbit. Even a roomy cage is not big enough to give the rabbit adequate exercise, so they must be out of the cage several hours a day in order to hop, jump and run about.\n\n Rabbits should be in a human house at night to protect them from predators. Even if a predator cannot break into an outdoor hutch, it can terrify a rabbit to the point that the rabbit will badly injure himself by thrashing around in the hutch trying to escape. Rabbits can break their backs in this way and/or go into shock. Outdoor confinement should be for daytime exercise only and should be in a place protected from predators and weather. Supervision is always advised. The ideal temperature for rabbits is between 60-70 degrees.\n\n Danger from predators, parasites, extreme temperatures and undetected illness are all reasons to make your house your rabbit''s primary residence. Outdoor hutch rabbits also suffer from loneliness.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Litter Box',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'If you allow your pet to select their own toilet area in the cage first, and then place a cat litter box in that area, you may be fairly successful at litter box training. Non-clumping litter, hardwood shavings such as aspen (not pine or cedar as these have been linked to liver damage), or various organic litters that can be composted may be used in the box. Avoid cereal based litters that the rabbit will consume in great quantities. Rabbits who are neutered and spayed have the best toilet habits.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Free Roam of the House',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:               Text(
                      'Rabbits can be extremely destructive of furniture, carpets and woodwork. The solution is to "bunny-proof" a room or play area, offer digging and chew toys and/or supervise them when they are out of the cage. They will also chew on electrical and phone cords with the potential for electrocution. Please cage your pet when you are not home or "bunny-proof" a room where it can live safely.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Temperature',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'Rabbits should be kept in the coolest and least humid area of the house. Bunnies kept in warm, humid environments with poor air circulation have a dramatic increase in disease over bunnies kept in cool dry environments with good air exchange. Damp basements are one of the worst areas to keep your pet.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            Text(
              'Taming & Handling',
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
                color: Color(0xff6b2978),
              ),
            ),

            Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                child:            Text(
                  'Always support your rabbit''s hind quarters when picking them up. This is '
                      'extremely important. If the back legs are allowed to dangle unsupported, '
                      'one strong kick can lead to fracture of the spine, causing permanent '
                      'paralysis. Never pick up a bunny by his sensitive ears. Most rabbits '
                      'do not like to be cuddled, picked up and carried around. They do, '
                      'however, like to be petted while you are on the floor with them.\n',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),


            Text(
              'Ailments',
              style: TextStyle(
                fontSize: 25.0,
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
                color: Color(0xff6b2978),
              ),
            ),

            ExpansionTile(
              title: Text(
                'Cancer',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'The leading cause of death in female rabbits is adenocarcinoma of the uterus. This type of cancer is preventable by having her spayed (removal of the ovaries and uterus). The procedure is recommended to be done between six months and one year of age.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Aggression',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'Many bunnies may become territorial and aggressive when they reach sexual maturity. They may lunge, bite and spray urine outside of the regular toilet area. Spaying and neutering is the only effective solution to this behavior.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Hairballs of the Stomach',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:                Text(
                      'Rabbits have very fine hair that tends to easily clump together. They shed frequently and are constantly grooming themselves. Since bunnies do not have the ability to vomit, this hair may accumulate into a large clump in the stomach. Additionally, many substances, including pelleted food, can cause an impaction if the rabbit is not eating enough fiber. Free access to hay and regular exercise are the best preventions. A cat laxative and digestive enzymes may also help. It is also advantageous to brush your bunny frequently, even daily, with a wire type "slicker" brush, to limit the amount of hair your pet has to swallow. If, however, your pet develops the symptoms of a stomach hairball or impaction, you will need to seek veterinary attention. The symptoms include: loss of appetite with apparent normal activity; smaller than normal or total absence of stools; stools strung together with hair. The animal will still drink and urinate and appear active. Give a cat laxative immediately and seek veterinary attention if lack of appetite persists more than two days.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Overgrown Teeth',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:Text(
                      'Overgrown incisors are many times caused by malocclusion of the molars or back teeth. Any time the front teeth are observed to overgrow, your pet should be checked by a veterinarian to determine the cause. If the back teeth or molars are the cause, they will need to be clipped, sometimes only possible under a general anesthetic.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
            ),

            ExpansionTile(
              title: Text(
                'Pasteurellosis',
                style: TextStyle(
                  fontFamily: 'SourceSanspro',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff6b2978),
                ),
              ),
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical:10.0),
                    child:Text(
                      'Most bunnies carry a bacterium in their bodies called Pasteurella multocida. In bunnies who have healthy immune systems, this bacteria never causes a disease. However, under certain stress situations such as poor diet, overcrowding, poor temperature or air circulation, this bacteria can reproduce rapidly and cause potentially serious disease. Pasteurella may cause infections of the upper respiratory system, eyes, uterus, liver, kidney and lungs. It can also take the form of an abscess that will feel like a lump under the skin. Please have your pet examined by a veterinarian if they show any discharges around the eyes, nose or anal area, if you feel a lump on their body, or if there is lack of appetite, depression or rapid breathing. Never attempt to use antibiotics without veterinary supervision. The rabbit''s gastrointestinal system is delicate and fragile and depends on a large population of normal bacteria to digest food. If antibiotics are given indiscriminately, death may result from loss of beneficial bacteria and overgrowth of dangerous bacteria. A rabbit should never be given the antibiotic Amoxicillin.\n',
                      style:TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6b2978),
                      ),
                    ),
                ),


              ],
              trailing: Icon(Icons.keyboard_arrow_down, color: Color(0xff6b2978)),
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
