import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/material.dart';
import '../container.dart';
import 'package:project/forPatient/loginPage1.dart';
import 'package:google_fonts/google_fonts.dart';

class signUp extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

enum Type { MALE, FEMALE }

final personReference = FirebaseDatabase.instance.reference().child('Person');
final patientReference = FirebaseDatabase.instance.reference().child('patient');
final familyReference = FirebaseDatabase.instance.reference().child('family');

class _SignUpPageState extends State<signUp> {
  Type _typeValue = Type.MALE;
  bool checkBoxValue = false;
  double _height;
  double _width;
  double _pixelRatio;
  bool _large;
  bool _medium;

  TextEditingController _fnameController = TextEditingController();
  TextEditingController _lnameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _covernateController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _streetController = TextEditingController();
  TextEditingController _typeController = TextEditingController();
  TextEditingController _bloodtype = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _familyPhone = TextEditingController();

  TextEditingController _familyBlood = TextEditingController();

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

  Widget _loginAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => loginPage1()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.all(15),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Already have an account ?',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Login',
              style: TextStyle(
                  color: Color(0xfff79c4f),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'Reg',
          style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffe46b10),
          ),
          children: [
            TextSpan(
              text: 'ister',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'ation',
              style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
            ),
          ]),
    );
  }

  Widget firstNameTextFormField() {
    // return CustomTextField(
    //   keyboardType: TextInputType.text,
    //   icon: Icons.person,
    //   hint: "First Name",

    // );

    return TextFormField(
      decoration: InputDecoration(
          labelText: 'First Name', prefixIcon: Icon(Icons.person)),
      keyboardType: TextInputType.text,
      controller: _fnameController,
    );
  }

  Widget lastNameTextFormField() {
    // return CustomTextField(
    //   keyboardType: TextInputType.text,
    //   icon: Icons.person,
    //   hint: "Last Name",
    // );

    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Last Name', prefixIcon: Icon(Icons.person)),
      keyboardType: TextInputType.text,
      controller: _lnameController,
    );
  }

  Widget emailTextFormField() {
    // return CustomTextField(
    //   keyboardType: TextInputType.emailAddress,
    //   icon: Icons.email,
    //   hint: "Email ID",
    // );

    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Email', prefixIcon: Icon(Icons.email)),
      keyboardType: TextInputType.emailAddress,
      controller: _emailController,
    );
  }

  Widget phoneTextFormField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Phone', prefixIcon: Icon(Icons.lock)),
      keyboardType: TextInputType.number,
      controller: _phone,
    );
  }

  Widget passwordTextFormField() {
    // return CustomTextField(
    //   keyboardType: TextInputType.visiblePassword,
    //   obscureText: true,
    //   icon: Icons.lock,
    //   hint: "Password",
    // );

    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Password', prefixIcon: Icon(Icons.lock)),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      controller: _passwordController,
    );
  }

  Widget addressTextFormField() {
    return Container(
      padding: EdgeInsets.all(30.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Row(
        children: <Widget>[
          new Text(
            'Governate : ',
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),
          new Expanded(
            flex: 1,
            child: new TextField(
              decoration: InputDecoration(
                // border: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
              ),
              cursorColor: Colors.orange[200],
              controller: _covernateController,
            ),
          ),
          new Text(
            'City : ',
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),
          new Expanded(
            flex: 1,
            child: new TextField(
              decoration: InputDecoration(
                //border: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
              ),
              cursorColor: Colors.orange[200],
              controller: _cityController,
            ),
          ),
          new Text(
            'Street : ',
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),
          new Expanded(
              flex: 1,
              child: new TextField(
                decoration: InputDecoration(
                    //border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true),
                cursorColor: Colors.orange[200],
                controller: _streetController,
              )),

          // Expanded(
          //   flex: 1,
          //   child: new Container(
          //     // width: MediaQuery.of(context).size.width * 0.25,
          //     child: Text("Governate"),
          //     decoration: BoxDecoration(
          //       color: Colors.white60,
          //       borderRadius: BorderRadius.all(Radius.circular(10)),
          //       boxShadow: <BoxShadow>[
          //         BoxShadow(
          //             color: Colors.grey.shade200,
          //             offset: Offset(2, 4),
          //             blurRadius: 5,
          //             spreadRadius: 2)
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget ageTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Age', prefixIcon: Icon(Icons.assignment_ind_outlined)),
      keyboardType: TextInputType.text,
      controller: _ageController,
    );
  }

  Widget bloodFamilyTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Family blood',
          prefixIcon: Icon(Icons.assignment_ind_outlined)),
      keyboardType: TextInputType.text,
      obscureText: true,
      controller: _familyBlood,
    );
  }

  Widget phoneFamilyTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Family Phone',
          prefixIcon: Icon(Icons.assignment_ind_outlined)),
      keyboardType: TextInputType.text,
      controller: _familyPhone,
    );
  }

  String radioItem = '';

  Widget genderTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Gender', prefixIcon: Icon(Icons.assignment_ind_outlined)),
      keyboardType: TextInputType.text,
      controller: _typeController,
    );
  }

  Widget bloodTypeTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Blood_Type',
          prefixIcon: Icon(Icons.assignment_ind_outlined)),
      keyboardType: TextInputType.text,
      controller: _bloodtype,
    );
  }

  Widget _registerButton() {
    return RaisedButton(
      ///////////////////////////////////////true/////////false
      child: Text(
        'Register',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      color: Colors.orange[300],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      onPressed: () {
        print({
          'fname': _fnameController.text ?? "",
          'lname': _lnameController.text ?? "",
          'age': _ageController.text ?? "",
          'email': _emailController.text ?? "",
          'password': _passwordController.text ?? "",
          'covernate': _covernateController.text ?? "",
          'city': _cityController.text ?? "",
          'street': _streetController.text ?? "",
          'type': _typeController.text ?? "",
          'bloodtype': _bloodtype.text ?? "",
          'phone': _phone.text,
        });

        personReference.push().set({
          'fname': _fnameController.text ?? "",
          'lname': _lnameController.text ?? "",
          'age': _ageController.text ?? "",
          'email': _emailController.text ?? "",
          'password': _passwordController.text ?? "",
          'covernate': _covernateController.text ?? "",
          'city': _cityController.text ?? "",
          'street': _streetController.text ?? "",
          'type': _typeController.text ?? "",
        }).then((_) {
          patientReference.push().set({
            'bloodtype': _bloodtype.text ?? "",
            'phone': _phone.text ?? "",
          }).then((_) {
            familyReference.push().set({
              'blood': _familyBlood.text ?? "",
              'phone': _familyPhone.text ?? "",
            }).then((value) => Navigator.push(context,
                MaterialPageRoute(builder: (context) => loginPage1())));
          });
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    // _large =  ResponsiveWidget.isScreenLarge(_width, _pixelRatio);
    // _medium =  ResponsiveWidget.isScreenMedium(_width, _pixelRatio);
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -MediaQuery.of(context).size.height * .15,
              right: -MediaQuery.of(context).size.width * .4,
              child: Container(),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: height * .2),
                    _title(),
                    SizedBox(
                      height: 10,
                    ),
                    firstNameTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    lastNameTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    ageTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    genderTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    emailTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    passwordTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    phoneTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    addressTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    bloodTypeTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    bloodFamilyTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    phoneFamilyTextFormField(),
                    SizedBox(
                      height: 10,
                    ),
                    _registerButton(),
                    SizedBox(
                      height: 10,
                    ),
                    _loginAccountLabel(),
                  ],
                ),
              ),
            ),
            Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );
  }
}
