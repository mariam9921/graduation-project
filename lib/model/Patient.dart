import 'package:firebase_database/firebase_database.dart';

class Patient {
  String Pid;
  String Naid;
  String Bloodtype;
  String Phone;
  String Foodid;
  String Operationid;
  String Medicalid;
  String Raysid;
  String Alimentid;
  String Medicaltestid;
  String Pemail;

  //constractor
  Patient({
    this.Pid = "",
    this.Naid = "",
    this.Bloodtype = "",
    this.Phone = "",
    this.Foodid = "",
    this.Operationid = "",
    this.Medicalid = "",
    this.Raysid = "",
    this.Alimentid = "",
    this.Medicaltestid = "",
    // this.Pemail = ""
  });

  Patient.map(dynamic obj) {
    this.Pid = obj['p_id'];
    this.Naid = obj['na_id'];
    this.Bloodtype = obj['bloodtype'];
    this.Phone = obj['phone'];
    this.Foodid = obj['food_id'];
    this.Operationid = obj['operation_id'];
    this.Medicalid = obj['medical_id'];
    this.Raysid = obj['rays_id'];
    this.Alimentid = obj['aliment_id'];
    this.Medicaltestid = obj['medicaltest_id'];
    // this.Pemail = obj['email'];
  }

  String get p_id => Pid;
  String get na_id => Naid;
  String get bloodtype => Bloodtype;
  String get phone => Phone;
  String get food_id => Foodid;
  String get operation_id => Operationid;
  String get medical_id => Medicalid;
  String get rays_id => Raysid;
  String get aliment_id => Alimentid;
  String get medicaltest_id => Medicaltestid;
  // String get email=> Pemail;

  Patient.fromSnapshot(DataSnapshot snapshot) {
    Pid = snapshot.key;
    Naid = snapshot.key;
    Bloodtype = snapshot.value['bloodtype'];
    Phone = snapshot.value['phone'];
    Foodid = snapshot.key;
    Operationid = snapshot.key;
    Medicalid = snapshot.key;
    Raysid = snapshot.key;
    Alimentid = snapshot.key;
    Medicaltestid = snapshot.key;
    // Pemail = snapshot.value['email'];
  }
}
