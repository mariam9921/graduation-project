import 'package:firebase_database/firebase_database.dart';

class Aliments {
  String Alid;
  String Name;

  Aliments({this.Alid = "", this.Name = ""});

  Aliments.map(dynamic obj) {
    this.Alid = obj['al_id'];
    this.Name = obj['name'];
  }

  String get al_id => Alid;
  String get name => Name;

  Aliments.fromSnapshot(DataSnapshot snapshot) {
    Alid = snapshot.key;
    Name = snapshot.value['name'];
  }
}
