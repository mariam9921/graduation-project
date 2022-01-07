//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/customClipper.dart';
import 'package:project/container.dart';
//import 'package:google_fonts/google_fonts.dart';

class ViewData3 extends StatefulWidget {
  ViewData3({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ViewData3State createState() => _ViewData3State();
}

class _ViewData3State extends State<ViewData3> {
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
            title: Text('All Surgeries '),
            backgroundColor: Color(0xffe46b10),
          ),
          body:
// StreamBuilder(
//         stream: FirebaseFirestore.instance.collection('data').snapshots(),
//         builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (!snapshot.hasData) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }

//           return ListView(
//             children: snapshot.data.docs.map((document) {
//               return Container(
//                 child: Center(child: Text(document['text'])),
//               );
//             }).toList(),
//           );
//         },
//       ),

              ListView(children: <Widget>[
            Positioned(top: 40, left: 0, child: _backButton()),
            DataTable(
              columns: [
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Drname')),
                DataColumn(label: Text('Surg details')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('6/5/2020')),
                  DataCell(Text('2/3/2020')),
                 
                ]),
                DataRow(cells: [
                  DataCell(Text('d.marwa')),
                  DataCell(Text('d.nafesa')),
                 
                ]),
                DataRow(cells: [
                  DataCell(Text('‎باطنه')),
                  DataCell(Text('.زراعة قلب')),
                  DataCell(Text('')),
                ]),
               
               
              ],
            ),
          ])),
    );
  }
}
