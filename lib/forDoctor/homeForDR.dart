import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:project/container.dart';
import 'package:project/forDoctor/myProfile.dart';


import 'package:project/forDoctor/viewPatientForDR.dart';
import 'package:project/forDoctor/viewWorkScadule.dart';

class homeForDR extends StatefulWidget {
  homeForDR({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<homeForDR> {
  bool _checkbox1 = false;
  // bool _checkboxListTile1 = false;

  bool _checkbox2 = false;
  //bool _checkboxListTile2 = false;

  bool _checkbox3 = false;
  // bool _checkboxListTile3 = false;

  // bool _checkbox31 = false;
  // bool _checkboxListTile31 = false;

  // bool _checkbox32 = false;
  // bool _checkboxListTile32 = false;
  // bool checkBoxValue = false;
  double _height;
  double _width;
  double _pixelRatio;
  // bool _large;
  // bool _medium;

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

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(text: 'Welcome',
          /* style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffe46b10),
          ),*/
          children: [
            TextSpan(
              text: 'For Do',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'ctor',
              style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
            ),
          ]),
    );
  }

  Widget _viewWork() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute<void>(builder: (context) => viewWorkScadule()));
      },
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: _width * .1,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.all(30.0),
              decoration: new BoxDecoration(
                  color: Colors.orange[100],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: _checkbox1,
                        activeColor: Colors.red,
                        onChanged: (value) {
                          setState(() {
                            _checkbox1 = !_checkbox1;
                          });
                        },
                      ),
                      Text('Work Schedule',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(height: 50),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                  builder: (context) => viewWorkScadule()));
                        });
                      },
                      textColor: Colors.grey[700],
                      child: Text(
                        'View',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _viewPatients() {
    return InkWell(
      child: Container(
        height: 200,
        padding: EdgeInsets.all(30.0),
        decoration: new BoxDecoration(
            color: Colors.orange[100],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                  value: _checkbox2,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      _checkbox2 = !_checkbox2;
                    });
                  },
                ),
                Text('Patients For Doctor',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 50),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (context) => viewPatientForDR()));
                },
                textColor: Colors.grey[700],
                child: Text(
                  'View',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _viewCertification() {
    return InkWell(
      child: Container(
        height: 200,
        padding: EdgeInsets.all(30.0),
        decoration: new BoxDecoration(
            color: Colors.orange[100],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Checkbox(
                  value: _checkbox3,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      _checkbox3 = !_checkbox3;
                    });
                  },
                ),
                Text('My Profile',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                SizedBox(height: 50),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                              builder: (context) => myProfile()));
                    },
                    textColor: Colors.grey[700],
                    child: Text(
                      'View',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    final height = MediaQuery.of(context).size.height;
    // List colors = [Colors.orange, Colors.yellow];
    // Random random = new Random();

    // int index = 0;

    // void changeIndex() {
    //   setState(() => index = random.nextInt(3));
    // }

    return Scaffold(
      body: Container(
        height: height,
        width: _width,

        // decoration: BoxDecoration(
        //     color: Colors.white,
        //     border: Border.all(
        //       color: Colors.red,
        //       width: 5,
        //     )),
        //  Image(
        //       image: AssetImage("images/doctor.jpg"),
        //       width: _width * 100,
        //       height: _height * 50,
        //     ),

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/doctor.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              // top: -MediaQuery.of(context).size.height * .15,
              // right: -MediaQuery.of(context).size.width * .4,
              top: -height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: Container(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    _title(),
                    SizedBox(
                      height: 70,
                    ),
                    // _viewWork(),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: _width * .1,
                          ),
                          _viewWork(),
                          SizedBox(
                            width: _width * .1,
                          ),
                          _viewPatients(),
                          SizedBox(
                            width: _width * .1,
                          ),
                          _viewCertification(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

    //       CheckboxListTile(
    //         controlAffinity: ListTileControlAffinity.leading,
    //         title: Text('View'),
    //         value: _checkboxListTile31,
    //         onChanged: (value) {
    //           setState(() {
    //             _checkboxListTile31 = !_checkboxListTile31;
    //           });
    //         },
    //       ),
    //       CheckboxListTile(
    //         controlAffinity: ListTileControlAffinity.leading,
    //         title: Text('Add Data'),
    //         value: _checkboxListTile32,
    //         onChanged: (value) {
    //           setState(() {
    //             _checkboxListTile32 = !_checkboxListTile32;
    //           });
    //         },
    //       ),
    //     ],
    //   ),
    // ),
  }
}
