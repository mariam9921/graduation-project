import 'package:firebase_database/firebase_database.dart';

class Con_pationt_doctor {
  String Patientid;
  String Doctorid;
  String Date;

  Con_pationt_doctor({this.Patientid = "", this.Doctorid = "", this.Date = ""});

  Con_pationt_doctor.map(dynamic obj) {
    this.Patientid = obj['patient_id'];
    this.Doctorid = obj['doctor_id'];
    this.Date = obj['date'];
  }

  String get patient_id => Patientid;
  String get doctor_id => Doctorid;
  String get dete => Date;

  Con_pationt_doctor.fromSnapshot(DataSnapshot snapshot) {
    Patientid = snapshot.key;
    Doctorid = snapshot.key;
    Date = snapshot.value['date'];
  }
}
