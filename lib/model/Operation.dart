import 'package:firebase_database/firebase_database.dart';

class Operation {
  String Opid;
  String Name;
  String Date;

  Operation({this.Opid = "", this.Name = "", this.Date = ""});

  Operation.map(dynamic obj) {
    this.Opid = obj['op_id'];
    this.Name = obj['name'];
    this.Date = obj['date'];
  }
  String get op_id => Opid;
  String get name => Name;
  String get odate => Date;

  Operation.fromSnapshot(DataSnapshot snapshot) {
    Opid = snapshot.key;
    Name = snapshot.value['name'];
    Date = snapshot.value['date'];
  }
}
