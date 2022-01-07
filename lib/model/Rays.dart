import 'package:firebase_database/firebase_database.dart';

class Rays {
  String Rid;
  String Name;
  String Date;
  String Image;

  Rays({this.Rid = "", this.Name = "", this.Date = "", this.Image = ""});

  Rays.map(dynamic obj) {
    this.Rid = obj['r_id'];
    this.Name = obj['name'];
    this.Date = obj['date'];
    this.Image = obj['image'];
  }

  String get r_id => Rid;
  String get name => Name;
  String get date => Date;
  String get image => Image;

  Rays.fromSnapshot(DataSnapshot snapshot) {
    Rid = snapshot.key;
    Name = snapshot.value['name'];
    Date = snapshot.value['date'];
    Image = snapshot.value['image'];
  }
}
