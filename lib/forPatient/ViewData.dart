import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/customClipper.dart';
import 'package:project/container.dart';
//import 'package:google_fonts/google_fonts.dart';

class ViewData extends StatefulWidget {
  ViewData({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ViewDataState createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
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
            title: Text('All dignosis'),
            backgroundColor: Color(0xffe46b10),
          ),
          body: ListView(children: <Widget>[
            Positioned(top: 40, left: 0, child: _backButton()),
            DataTable(
              columns: [
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Medical_Name')),
                DataColumn(label: Text('Aliment_Name')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('22/5/2020')),
                  DataCell(Text('4/3/2020')),
                  DataCell(Text('8/6/2010')),
                ]),
                DataRow(cells: [
                  DataCell(Text('congistal')),
                  DataCell(Text('panthinol')),
                  DataCell(Text('panadol')),
                ]),
                DataRow(cells: [
                  DataCell(Text('corona')),
                  DataCell(Text('فقر ‏دم')),
                  DataCell(Text('صداع')),
                ]),
                DataRow(cells: [
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
                DataRow(cells: [
                  DataCell(Text('')),
                  DataCell(Text('')),
                  DataCell(Text('')),
                ]),
              ],
            ),
          ])),
    );
  }
}
