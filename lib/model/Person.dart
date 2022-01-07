import 'package:firebase_database/firebase_database.dart';

class Person {
  String Naid;
  String Fname;
  String Lname;
  String Age;
   String Email;
  String Password;
  String Covernate;
  String City;
  String Street;
  String Type;
  // bool Isdoctor;

  //constractor
  Person({
    this.Naid = "",
    this.Fname = "",
    this.Lname = "",
    this.Age = "",
    this.Email = "",
    this.Password = "",
    this.Covernate = "",
    this.City = "",
    this.Street = "",
    this.Type = "",
    // this.Isdoctor
  });

  // to add on database make file like table and not table . it is nosql
  Person.map(dynamic obj) {
    // this._Na_id = obj['na_id'];
    this.Fname = obj['fname']; //name in db fname
    this.Lname = obj['lname'];
    this.Age = obj['age'];
     this.Email = obj['email'];
    this.Password = obj['password'];
    this.Covernate = obj['covernate'];
    this.City = obj['city'];
    this.Street = obj['street'];
    this.Type = obj['type'];
    //this.Isdoctor = obj['isdoctor'];
  }

  //get data from user
  String get na_id => Naid;
  String get fname => Fname;
  String get lname => Lname;
  String get age => Age;
   String get email => Email;
  String get password => Password;
  String get covernate => Covernate;
  String get city => City;
  String get street => Street;
  String get type => Type;
  // String get isdoctor => Isdoctor;

  // get info from database

  Person.fromSnapshot(DataSnapshot snapshot) {
    Naid = snapshot.key;
    Fname = snapshot.value['fname'];
    Lname = snapshot.value['lname'];
    Age = snapshot.value['age'];
     Email = snapshot.value['email'];
    Password = snapshot.value['password'];
    Covernate = snapshot.value['covernate'];
    City = snapshot.value['city'];
    Street = snapshot.value['street'];
    Type = snapshot.value['type'];
    // Isdoctor = snapshot.value['isdoctor'];
  }
}
