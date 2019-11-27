class NewNotification{
  String title;
  String message;

  NewNotification(this.title, this.message);

  NewNotification.map(dynamic obj){
    this.title = obj['title'];
    this.message = obj['message'];
  }

  String get _title => title;
  String get _message => message;




  Map<String,dynamic> toMap(){
    var map=new Map<String,dynamic>();
    map['_title']=title;
    map['_message'] = message;
    return map;
  }

  NewNotification.fromMap(Map<String,dynamic> map){
    this.title= map['_title'];
    this.message = map['_message'];
  }
}