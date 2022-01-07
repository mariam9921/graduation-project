import 'package:project/model/Con_pationt_doctor.dart';
//import 'package:project/model/family_screen.dart';
//import 'package:database/Ui/patient_screen.dart';
//import 'package:database/Ui/medical_screen.dart';
import 'package:project/model//Aliments.dart';
import 'package:project/model//Doctor.dart';
import 'package:project/model//Family.dart';
import 'package:project/model//Medical.dart';
import 'package:project/model//Medicaltest.dart';
import 'package:project/model//Operation.dart';
import 'package:project/model//Patient.dart';
import 'package:project/model//Rays.dart';
import 'package:project/model//Restrictedfood.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/Material.dart';
                      
import 'package:project/model//Person.dart';
//import 'package:database/Ui/ray_Screen.dart';
//import 'package:database/Ui/operation_Screen.dart';
//import 'package:database/Ui/medicaltest_screen.dart';
//import 'package:database/Ui/restrictedfood_screen.dart';
//import 'package:database/Ui/aliment_screen.dart';

//import 'doctor_screan.dart';

class personScreen extends StatefulWidget {
  final Person person;
  personScreen(this.person);
  @override
  State<StatefulWidget> createState() => new _personScreenState();
}

final personReference = FirebaseDatabase.instance.reference().child('Person');

class _personScreenState extends State<personScreen> {
  TextEditingController _fnameController;
  TextEditingController _lnameController;
  TextEditingController _ageController;
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _covernateController;
  TextEditingController _cityController;
  TextEditingController _streetController;
  TextEditingController _typeController;

  @override
  void initState() {
    super.initState();
    _fnameController = new TextEditingController(text: widget.person.fname);
    _lnameController = new TextEditingController(text: widget.person.lname);
    _ageController = new TextEditingController(text: widget.person.age);
    _emailController = new TextEditingController(text: widget.person.email);
    _passwordController =
        new TextEditingController(text: widget.person.password);
    _covernateController =
        new TextEditingController(text: widget.person.covernate);
    _cityController = new TextEditingController(text: widget.person.city);
    _streetController = new TextEditingController(text: widget.person.street);
    _typeController = new TextEditingController(text: widget.person.type);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Person DB'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 15.0),
//        alignment: Alignment.center,
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            TextField(
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
              controller: _fnameController,
              decoration:
                  InputDecoration(icon: Icon(Icons.person), labelText: 'FName'),
            ),
//            Padding(padding: EdgeInsets.only(top: 8.0),),

            TextField(
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
              controller: _lnameController,
              decoration:
                  InputDecoration(icon: Icon(Icons.person), labelText: 'LName'),
            ),

            TextField(
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
              controller: _ageController,
              decoration:
                  InputDecoration(icon: Icon(Icons.person), labelText: 'Age'),
            ),
//            Padding(padding: EdgeInsets.only(top: 8.0),),
            TextField(
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
              controller: _emailController,
              decoration:
                  InputDecoration(icon: Icon(Icons.email), labelText: 'Email'),
            ),

            TextField(
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
              controller: _passwordController,
              decoration: InputDecoration(
                  icon: Icon(Icons.no_encryption_gmailerrorred_outlined),
                  labelText: 'Password'),
            ),

            TextField(
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
              controller: _covernateController,
              decoration: InputDecoration(
                  icon: Icon(Icons.location_city), labelText: 'Covernate'),
            ),

            TextField(
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
              controller: _cityController,
              decoration: InputDecoration(
                  icon: Icon(Icons.location_city), labelText: 'City'),
            ),

            TextField(
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
              controller: _streetController,
              decoration: InputDecoration(
                  icon: Icon(Icons.call_split_rounded), labelText: 'Street'),
            ),

            TextField(
              style: TextStyle(fontSize: 16.0, color: Colors.deepPurpleAccent),
              controller: _typeController,
              decoration:
                  InputDecoration(icon: Icon(Icons.person), labelText: 'Type'),
            ),

            FlatButton(
              child:
                  ///////////////////////////////////////true/////////false id=null
                  (widget.person.na_id != null) ? Text('Update') : Text('Add'),
              onPressed: () {
                if (widget.person.na_id != null) {
                  personReference.child(widget.person.na_id).set({
                    'fname': _fnameController.text,
                    'lname': _lnameController.text,
                    'age': _ageController.text,
                    'email': _emailController.text,
                    'password': _passwordController.text,
                    'covernate': _covernateController.text,
                    'city': _cityController.text,
                    'street': _streetController.text,
                    'type': _typeController.text
                  }).then((_) {
                    Navigator.pop(context);
                  });
                } else {
                  personReference.push().set({
                    'fname': _fnameController.text,
                    'lname': _lnameController.text,
                    'age': _ageController.text,
                    'email': _emailController.text,
                    'password': _passwordController.text,
                    'covernate': _covernateController.text,
                    'city': _cityController.text,
                    'street': _streetController.text,
                    'type': _typeController.text
                  }).then((_) {
                    Navigator.pop(context);
                  });
                }
              },
            ),
            // OutlinedButton(
            //   onPressed: () => _createNewpatient(context),
            //   child: Text("Patiant"),
            // ),
            // SizedBox(height: 2.0),
            // OutlinedButton(
            //   onPressed: () => _createNewdoctor(context),
            //   child: Text("Doctor"),
            // ),
            // SizedBox(height: 2.0),
            // OutlinedButton(
            //   onPressed: () => _createNewfamily(context),
            //   child: Text("family"),
            // ),
            // SizedBox(height: 5.0),

            // OutlinedButton(
            //   onPressed: () => _createRays(context),
            //   child: Text("Rays"),
            // ),
            // SizedBox(height: 5.0),
            // OutlinedButton(
            //   onPressed: () => _createOperation(context),
            //   child: Text("operations"),
            // ),
            // SizedBox(height: 5.0),
            // OutlinedButton(
            //   onPressed: () => _createMedical(context),
            //   child: Text("medical"),
            // ),
            // SizedBox(height: 5.0),
            // OutlinedButton(
            //   onPressed: () => _createMedicaltest(context),
            //   child: Text("medical test"),
            // ),
            // SizedBox(height: 5.0),
            // OutlinedButton(
            //   onPressed: () => _createresfood(context),
            //   child: Text("restrict food"),
            // ),
            // SizedBox(height: 5.0),
            // OutlinedButton(
            //   onPressed: () => _createaliment(context),
            //   child: Text("alimnat "),
            // ),
            // SizedBox(height: 5.0),
            // OutlinedButton(
            //   onPressed: () => _createcon(context),
            //   child: Text("con "),
            // ),
            // SizedBox(height: 5.0),
          ],
        ),
      ),
    );
  }

  // void _createNewpatient(BuildContext context) async {
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => patientScrean(Patient(
  //               null,
  //               null,
  //               '',
  //               null,
  //               null,
  //               null,
  //               null,
  //               null,
  //               null,
  //               null,
  //             ))),
  //   );
  // }

  // void _createNewdoctor(BuildContext context) async {
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => doctorScreen(Doctor(
  //               null,
  //               null,
  //               '',
  //               '',
  //               '',
  //               null,
  //               null,
  //               null,
  //               null,
  //               null,
  //             ))),
  //   );
  // }

  // void _createNewfamily(BuildContext context) async {
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => familyScreen(Family(
  //               null,
  //               '',
  //               null,
  //               '',
  //             ))),
  //   );
  // }

  // void _createRays(BuildContext context) async {
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => rayScreen(Rays(
  //               null,
  //               '',
  //               '',
  //               '',
  //             ))),
  //   );
  // }

  // void _createOperation(BuildContext context) async {
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => operationScreen(Operation(
  //               null,
  //               '',
  //               '',
  //             ))),
  //   );
  }

  // void _createMedical(BuildContext context) async {
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => medicalScreen(Medical(
  //               null,
  //               '',
  //               '',
  //             ))),
  //   );
  // }

  // void _createMedicaltest(BuildContext context) async {
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => medicaltestScreen(Medicaltest(
  //               null,
  //               '',
  //               '',
  //             ))),
  //   );
  // }

  // void _createresfood(BuildContext context) async {
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => restrictedfoodScreen(Restrictedfood(
  //               null,
  //               '',
  //             ))),
  //   );
  // }

  // void _createaliment(BuildContext context) async {
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => alimentScreen(Aliments(
  //               null,
  //               '',
  //             ))),
  //   );
  // }

  // void _createcon(BuildContext context) async {
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => conScreen(Con_pationt_doctor(
  //               null,
  //               null,
  //               '',
  //             ))),
  //   );
  // }

