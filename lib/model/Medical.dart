import 'package:firebase_database/firebase_database.dart';

class Medical {
  String Meid;
  String Name;
  String Mdate;

  Medical({this.Meid = "", this.Name = "", this.Mdate = ""});

  Medical.map(dynamic obj) {
    this.Meid = obj['me_id'];
    this.Name = obj['name'];
    this.Mdate = obj['date'];
  }

  String get me_id => Meid;
  String get name => Name;
  String get date => Mdate;

  Medical.fromSnapshot(DataSnapshot snapshot) {
    Meid = snapshot.key;
    Name = snapshot.value['name'];
    Mdate = snapshot.value['date'];
  }
}
