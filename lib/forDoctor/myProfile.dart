import 'package:flutter/material.dart';
//import 'package:flutter_login_signup/src/signup.dart';
//import 'package:google_fonts/google_fonts.dart';

import '../container.dart';

class myProfile extends StatefulWidget {
  @override
  _myProfileState createState() => _myProfileState();
}

class _myProfileState extends State<myProfile> {
  bool checkBoxValue = false;
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

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(text: 'My',
          /* style: GoogleFonts.portLligatSans(
            textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xffe46b10),
          ),*/
          children: [
            TextSpan(
              text: 'Pro',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            TextSpan(
              text: 'file',
              style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
            ),
          ]),
    );
  }

  Widget form() {
    return Container(
      margin: EdgeInsets.only(
          left: _width / 12.0, right: _width / 12.0, top: _height / 20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            firstNameTextFormField(),
            SizedBox(height: _height / 60.0),
            lastNameTextFormField(),
            SizedBox(height: _height / 60.0),
            emailTextFormField(),
            SizedBox(height: _height / 60.0),
            phoneTextFormField(),
            SizedBox(height: _height / 60.0),
            passwordTextFormField(),
            SizedBox(height: _height / 60.0),
            addressTextFormField(),
            SizedBox(height: _height / 60.0),
            specializationTextFormField(),
            SizedBox(height: _height / 60.0),
            guildCardTextFormField(),
            SizedBox(height: _height / 60.0),
            ageTextFormField(),
            SizedBox(height: _height / 60.0),
          ],
        ),
      ),
    );
  }

  Widget firstNameTextFormField() {
    return Container(
      decoration: myBoxDecoration(),
      child: Row(
        children: [
          Text("First Name :",
              style: TextStyle(color: Color(0xffe46b10), fontSize: 20)),
          Text(
            "  Marwa",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border(
        left: BorderSide(
            //                   <--- left side
            color: Colors.grey[100],
            width: 15.0),
        top: BorderSide(
          //                    <--- top side
          color: Colors.grey[300],
          width: 10.0,
        ),
        right: BorderSide(
          //                    <--- top side
          color: Colors.grey[500],
          width: 5.0,
        ),
        bottom: BorderSide(
          //                    <--- top side
          color: Colors.grey[800],
          width: 3.0,
        ),
      ),
    );
  }

  Widget lastNameTextFormField() {
    return Container(
      decoration: myBoxDecoration(),
      child: Row(
        children: [
          Text(
            "Last Name :",
            style: TextStyle(color: Color(0xffe46b10), fontSize: 20),
          ),
          Text(
            "  Sharaf Elden",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget ageTextFormField() {
    return Container(
      decoration: myBoxDecoration(),
      child: Row(
        children: [
          Text(
            "Age :",
            style: TextStyle(color: Color(0xffe46b10), fontSize: 20),
          ),
          Text(
            "  21",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget emailTextFormField() {
    return Container(
      decoration: myBoxDecoration(),
      child: Row(
        children: [
          Text(
            "Email Id :",
            style: TextStyle(color: Color(0xffe46b10), fontSize: 20),
          ),
          Text(
            "  marwa@gmail.com",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget passwordTextFormField() {
    return Container(
      decoration: myBoxDecoration(),
      child: Row(
        children: [
          Text(
            "Password :",
            style: TextStyle(color: Color(0xffe46b10), fontSize: 20),
          ),
          Text(
            "  1256cdv",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget phoneTextFormField() {
    return Container(
      decoration: myBoxDecoration(),
      child: Row(
        children: [
          Text(
            "Mobile Number :",
            style: TextStyle(color: Color(0xffe46b10), fontSize: 20),
          ),
          Text(
            "  01255688",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget addressTextFormField() {
    return Container(
      decoration: myBoxDecoration(),
      child: Row(
        children: [
          Text(
            "Address :",
            style: TextStyle(color: Color(0xffe46b10), fontSize: 20),
          ),
          Text(
            "  menouf , elmenoufia , talat street ",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget typeTextFormField() {
    return Container(
      decoration: myBoxDecoration(),
      child: Row(
        children: [
          Text(
            "Type :",
            style: TextStyle(color: Color(0xffe46b10), fontSize: 20),
          ),
          Text(
            "  Female",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget specializationTextFormField() {
    return Container(
      decoration: myBoxDecoration(),
      child: Row(
        children: [
          Text(
            "Specialization : ",
            style: TextStyle(color: Color(0xffe46b10), fontSize: 20),
          ),
          Text(
            "  dentist",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget guildCardTextFormField() {
    return Container(
      decoration: myBoxDecoration(),
      child: Row(
        children: [
          Text(
            "Guild Card :",
            style: TextStyle(color: Color(0xffe46b10), fontSize: 20),
          ),
          Text(
            "  45598965555",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _editButton() {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          color: Colors.orange[300] //
          ),
      child: Text(
        'Edit',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
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
                      height: 20,
                    ),

                    firstNameTextFormField(),
                    SizedBox(
                      height: 20,
                    ),
                    lastNameTextFormField(),
                    SizedBox(
                      height: 20,
                    ),
                    ageTextFormField(),
                    SizedBox(
                      height: 20,
                    ),
                    emailTextFormField(),
                    SizedBox(
                      height: 20,
                    ),
                    passwordTextFormField(),
                    SizedBox(
                      height: 20,
                    ),
                    phoneTextFormField(),
                    SizedBox(
                      height: 20,
                    ),
                    addressTextFormField(),
                    SizedBox(
                      height: 20,
                    ),
                    specializationTextFormField(),
                    SizedBox(
                      height: 20,
                    ),
                    guildCardTextFormField(),
                    SizedBox(
                      height: 20,
                    ),
                    _editButton(),
                    // ListTile(
                    //   title: const Text('Male'),
                    //   leading: Radio(
                    //     value: Type.MALE,
                    //     groupValue: _typeValue,
                    //     onChanged: (Type value) {
                    //       setState(() {
                    //         _typeValue = value;
                    //       });
                    //     },
                    //   ),
                    // ),
                    // ListTile(
                    //   title: const Text('Female'),
                    //   leading: Radio(
                    //     value: Type.FEMALE,
                    //     groupValue: _typeValue,
                    //     onChanged: (Type value) {
                    //       setState(() {
                    //         _typeValue = value;
                    //       });
                    //     },
                    //   ),
                    // ),
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
