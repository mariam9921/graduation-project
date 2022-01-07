import 'package:flutter/material.dart';

//import 'package:google_fonts/google_fonts.dart';

class viewPatientForDR extends StatefulWidget {
  viewPatientForDR({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ViewDataState createState() => _ViewDataState();
}

class _ViewDataState extends State<viewPatientForDR> {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Patients Who Are Recieving treatment with me'),
            backgroundColor: Color(0xffe46b10),
          ),
          body: ListView(children: <Widget>[
            Positioned(top: 40, left: 0, child: _backButton()),
            DataTable(
              columns: [
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Patient-name')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
              ],
            ),
          ])),
    );
  }
}
