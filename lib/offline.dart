import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'model/Person.dart';
import 'myProject.dart';
import 'model/Patient.dart';

class Offline extends StatefulWidget {
  final Person person;
  Offline(this.person);

  @override
  _OfflineState createState() => _OfflineState();
}

final personReference = FirebaseDatabase.instance.reference().child('Person');
final patiantReference = FirebaseDatabase.instance.reference().child('patiant');

class _OfflineState extends State<Offline> {
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _photo() {
    return CircleAvatar(
      radius: 100,
      backgroundImage: AssetImage('image/profile.jpg'),
    );
  }

  Widget _moreInformationLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => myProject()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'More information',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('person Information'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(
              widget.person.fname,
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            Text(
              widget.person.lname,
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            Text(
              widget.person.age,
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            Text(
              widget.person.email,
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            Text(
              widget.person.password,
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            Text(
              widget.person.covernate,
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            Text(
              widget.person.city,
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            Text(
              widget.person.street,
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            Text(
              widget.person.type,
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
            ),
          ],
        ),
      ),
    );
  }
}
