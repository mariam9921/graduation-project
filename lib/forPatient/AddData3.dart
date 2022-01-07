import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/customClipper.dart';
import 'package:project/container.dart';
import 'package:project/forPatient/ViewData3.dart';
//import 'package:google_fonts/google_fonts.dart';

class AddData3 extends StatefulWidget {
  AddData3({Key key, this.title}) : super(key: key);

  final dynamic title;

  @override
  _AddData3State createState() => _AddData3State();
}

final operationReference =
    FirebaseDatabase.instance.reference().child('operations');


class _AddData3State extends State<AddData3> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _dateController = TextEditingController();

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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _entryField(dynamic date) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "date",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Color(0xfff3f3f4),
                filled: true),
            controller: _dateController,
          )
        ],
      ),
    );
  }

  Widget _entryField1(dynamic drname) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "name",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Color(0xfff3f3f4),
                filled: true),
            controller: _nameController,
          )
        ],
      ),
    );
  }

  Widget _entryField2(dynamic DignosisDetail) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

  Widget _submitButton() {
    return RaisedButton(
      ///////////////////////////////////////true/////////false
      child: Text(
        'Submit',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      color: Colors.orange[300],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),

      onPressed: () {
        print({
          'name': _nameController.text ?? "",
          'date': _dateController.text ?? "",
        });

        operationReference.push().set({
          'name': _nameController.text ?? "",
          'date': _dateController.text ?? "",
        });
      },
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(text: 'record ', children: [
        TextSpan(
          text: 'the Surgeries ',
          style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
        ),
      ]),
    );
  }

  Widget _dateTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'DATE(dd/mm/yyyy)',
          prefixIcon: Icon(Icons.assignment_ind_outlined)),
      keyboardType: TextInputType.text,
      controller: _dateController,
    );
  }

  Widget _nameTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'name(f/m/l)', prefixIcon: Icon(Icons.article_outlined)),
      keyboardType: TextInputType.text,
      controller: _nameController,
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("DATE(dd/mm/yyyy)"),
        _entryField1("name(f/m/l)"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: height,
      child: Stack(
        children: <Widget>[
          Positioned(
              top: -height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: Container()),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: height * .2),
                  _title(),
                  SizedBox(height: 50),
                  // _dateTextFormField(),
                  //  SizedBox(height: 50),
                  //  _nameTextFormField(),
                  //   SizedBox(height: 50),
                  // _surgeriesTextFormField(),
                  _emailPasswordWidget(),
                  SizedBox(height: 70),
                  _submitButton(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerRight,
                  ),
                  _divider(),
                ],
              ),
            ),
          ),
          Positioned(top: 40, left: 0, child: _backButton()),
        ],
      ),
    ));
  }
}
