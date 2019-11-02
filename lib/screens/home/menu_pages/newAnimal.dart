class NewAnimal{
  String name;
  String animalID;
  String age;
  String sex;
  String species;
  String breed;
  String status;
  String location;
  String animalPic;
  String description;
  String lonelyHearts;
  String adoptionFee;

  NewAnimal(this.name, this.animalID, this.age, this.sex, this.species, this.breed, this.status, this.location,
      this.animalPic, this.description, this.lonelyHearts, this.adoptionFee);

  NewAnimal.map(dynamic obj){
    this.name = obj['name'];
    this.animalID = obj['animalID'];
    this.age = obj['age'];
    this.sex = obj['sex'];
    this.species = obj['species'];
    this.breed = obj['breed'];
    this.status = obj['status'];
    this.location = obj['location'];
    this.animalPic = obj['animalPic'];
    this.description = obj['description'];
    this.lonelyHearts = obj['lonelyHearts'];
    this.adoptionFee = obj['adoptionFee'];
  }

  String get _name => name;
  String get _animalID => animalID;
  String get _age => age;
  String get _sex => sex;
  String get _species => species;
  String get _breed => breed;
  String get _status => status;
  String get _location => location;
  String get _animalPic => animalPic;
  String get _description => description;
  String get _lonelyHearts => lonelyHearts;
  String get _adoptionFee => adoptionFee;



  Map<String,dynamic> toMap(){
    var map=new Map<String,dynamic>();
    map['_name']=name;
    map['_animalID'] = animalID;
    map['_age'] = age;
    map['_sex'] = sex;
    map['_species'] = species;
    map['_breed'] = breed;
    map['_status'] = status;
    map['_location'] = location;
    map['_animalPic'] = animalPic;
    map['_description'] = description;
    map['_lonelyHearts'] = lonelyHearts;
    map['_adoptionFee'] = adoptionFee;

    return map;
  }

  NewAnimal.fromMap(Map<String,dynamic> map){
    this.name= map['_name'];
    this.animalID = map['_animalID'];
    this.age = map['_age'];
    this.sex = map['_sex'];
    this.species = map['_species'];
    this.breed = map['_breed'];
    this.status = map['_status'];
    this.location = map['_location'];
    this.animalPic = map['_animalPic'];
    this.description = map['_description'];
    this.lonelyHearts = map['_lonelyHearts'];
    this.adoptionFee = map['_adoptionFee'];

  }
}