import 'package:firebase_database/firebase_database.dart';

class Restrictedfood {
  String Rfid;
  String Name;

  Restrictedfood({this.Rfid = "", this.Name = ""});

  Restrictedfood.map(dynamic obj) {
    this.Rfid = obj['rf_id'];
    this.Name = obj['name'];
  }

  String get rf_id => Rfid;
  String get name => Name;

  Restrictedfood.fromSnapshot(DataSnapshot snapshot) {
    Rfid = snapshot.key;
    Name = snapshot.value['name'];
  }
}
