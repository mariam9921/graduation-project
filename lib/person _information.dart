import 'package:project/model/Patient.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:project/model/Person.dart';
import 'dart:io';

import 'forPatient/welcomePage.dart';

class personinformation extends StatefulWidget {
  final Person person;
  //final Patient patiant;

  personinformation(this.person);

  //final Person person;
  // personinformation(this.person);
  @override
  State<StatefulWidget> createState() => new _personinformationState();
}

final personReference = FirebaseDatabase.instance.reference().child('Person');

class _personinformationState extends State<personinformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('person Information'),
        backgroundColor: Colors.orange[300],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(
              widget.person.fname,
              style: TextStyle(fontSize: 25, color: Colors.orange[300]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            Text(
              widget.person.lname,
              style: TextStyle(fontSize: 25, color: Colors.orange[300]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            Text(
              widget.person.age,
              style: TextStyle(fontSize: 25, color: Colors.orange[300]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            Text(
              widget.person.covernate,
              style: TextStyle(fontSize: 25, color: Colors.orange[300]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            Text(
              widget.person.city,
              style: TextStyle(fontSize: 25, color: Colors.orange[300]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            Text(
              widget.person.street,
              style: TextStyle(fontSize: 25, color: Colors.orange[300]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            // Text(
            //   widget.patiant.Bloodtype,
            //   style: TextStyle(fontSize: 25, color: Colors.orange[300]),
            // ),
            Padding(
              padding: EdgeInsets.only(top: 8.0),
            ),
            OutlinedButton(
              onPressed: () => _welcompage(context),
              child: Text("More Information "),
            ),
            SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  void _welcompage(BuildContext context) async {
    await Navigator.push(
        context, MaterialPageRoute(builder: (context) => welcomePage()));
  }
}
