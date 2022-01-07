import 'package:firebase_database/firebase_database.dart';

class Doctor {
  String Did;
  String Naid;
  String Guildcard;
  String Specialization;
  String Phone;
  String Operationid;
  String Medicalid;
  String Medicaltestid;
  String Raysid;
  String Patientid;
  /////
 // String Demail;

  Doctor(
      {this.Did = "",
      this.Naid = "",
      this.Guildcard = "",
      this.Specialization = "",
      this.Phone = "",
      this.Operationid = "",
      this.Medicalid = "",
      this.Medicaltestid = "",
      this.Raysid = "",
      this.Patientid = "",
     // this.Demail = ""
      });

  Doctor.map(dynamic obj) {
    this.Did = obj['d_id'];
    this.Naid = obj['na_id'];
    this.Guildcard = obj['guildcard'];
    this.Specialization = obj['specialization'];
    this.Phone = obj['phone'];
    this.Operationid = obj['operation_id'];
    this.Medicalid = obj['medical_id'];
    this.Medicaltestid = obj['medicaltest_id'];
    this.Raysid = obj['rays_id'];
    this.Patientid = obj['patient_id'];
   // this.Demail = obj['email'];
  }

  String get d_id => Did;
  String get na_id => Naid;
  String get guildcard => Guildcard;
  String get specialization => Specialization;
  String get phone => Phone;
  String get operation_id => Operationid;
  String get medical_id => Medicalid;
  String get medicaltest_id => Medicaltestid;
  String get rays_id => Raysid;
  String get patient_id => Patientid;
 // String get email => Demail;

  Doctor.fromSnapshot(DataSnapshot snapshot) {
    Did = snapshot.key;
    Naid = snapshot.key;
    Guildcard = snapshot.value['guildcard'];
    Specialization = snapshot.value['specialization'];
    Phone = snapshot.value['phone'];
    
    Operationid = snapshot.key;
    Medicalid = snapshot.key;
    Medicaltestid = snapshot.key;
    Raysid = snapshot.key;
    Patientid = snapshot.key;
    // Demail = snapshot.value['email'];
  }
}
