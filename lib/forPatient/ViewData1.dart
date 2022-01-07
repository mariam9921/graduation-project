import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'bezierContainer.dart';
// //import 'customClipper.dart';
// import 'google_fonts.dart';

class ViewData1 extends StatefulWidget {
  ViewData1({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ViewData1State createState() => _ViewData1State();
}

class _ViewData1State extends State<ViewData1> {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('All Analaysis'),
          backgroundColor: Color(0xffe46b10),
        ),
        body: ListView(children: <Widget>[
          Positioned(top: 40, left: 0, child: _backButton()),
          DataTable(
            columns: [
              DataColumn(label: Text('Date')),
              DataColumn(label: Text('analysisName')),
              DataColumn(label: Text('RName')),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('6/7/2020')),
              ]),
              DataRow(cells: [
                DataCell(Text('cbcaa')),
              ]),
              DataRow(cells: [
                DataCell(Text('positive')),
              ]),
              DataRow(cells: [
                DataCell(Text('meet')),
              ]),
            ],
          ),
        ]),
      ),
    );
  }
}
