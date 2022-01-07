import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:project/forDoctor/homeForDR.dart';
import 'package:project/forDoctor/loginPage.dart';

import 'package:project/forDoctor/welcomeHomePage.dart';
import 'package:project/forPatient/loginPage1.dart';
import 'package:project/forPatient/welcomePage.dart';
import 'package:project/offline.dart';

import 'forDoctor/loginPage.dart';
import 'forDoctor/loginPagett.dart';

import 'model/Person.dart';
import 'model/Person.dart';
import 'model/Person.dart';
import 'model/Person.dart';

class myProject extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<myProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 35.0),
            Container(
              height: 400,
              child: Image(
                image: AssetImage("images/welcome.jpg"),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 20),
            RichText(
                text: TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'Barcode Application',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange))
                ])),
            SizedBox(height: 10.0),

            // SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                              builder: (context) => loginPagett()));
                    },
                    child: Text(
                      'As Doctor',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.orange),
                SizedBox(width: 20.0),
                RaisedButton(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                              builder: (context) => loginPage1()));
                    },
                    child: Text(
                      'As Patient',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.orange),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
