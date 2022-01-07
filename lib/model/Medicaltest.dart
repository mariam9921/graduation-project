import 'package:firebase_database/firebase_database.dart';

class Medicaltest {
  String Mtid;
  String Name;
  String Mtdate;
  String Result;

  Medicaltest(
      {this.Mtid = "", this.Name = "", this.Mtdate = "", this.Result = ""});

  Medicaltest.map(dynamic obj) {
    this.Mtid = obj['mt_id'];
    this.Name = obj['name'];
    this.Mtdate = obj['date'];
    this.Result = obj['result'];
  }
  String get mt_id => Mtid;
  String get name => Name;
  String get date => Mtdate;
  String get result => Result;

  Medicaltest.fromSnapshot(DataSnapshot snapshot) {
    Mtid = snapshot.key;
    Name = snapshot.value['name'];
    Mtdate = snapshot.value['date'];
    Result = snapshot.value['result'];
  }
}
