import 'package:firebase_database/firebase_database.dart';

class Family {
  String Naid;
  String Blood;
  String Phone;
  String Patientid;

  Family(
      {this.Naid = "", this.Blood = "", this.Phone = "", this.Patientid = ""});

  Family.map(dynamic obj) {
    this.Naid = obj['na_id'];
    this.Blood = obj['blood'];
    this.Phone = obj['phone'];
    this.Patientid = obj['patient_id'];
  }

  String get na_id => Naid;
  String get blood => Blood;
  String get phone => Phone;
  String get patient_id => Patientid;

  Family.fromSnapshot(DataSnapshot snapshot) {
    Naid = snapshot.key;
    Blood = snapshot.value['blood'];
    Phone = snapshot.value['phone'];
    Patientid = snapshot.key;
  }
}
