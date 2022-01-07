import 'dart:async';
import 'package:project/model/Patient.dart';
import 'package:project/person _information.dart';
import 'package:project/person_screen.dart';
import 'package:project/forPatient/welcomePage.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:project/model/Person.dart';

class listviewperson extends StatefulWidget {
  @override
  _listviewpersonState createState() => new _listviewpersonState();
}

final personReference = FirebaseDatabase.instance.reference().child('Person');
//final patiantReference = FirebaseDatabase.instance.reference().child('patiant');

class _listviewpersonState extends State<listviewperson> {
  List<Person> items;
  //List<Patient> items1;
//outomatic adding or changing in db
  StreamSubscription<Event> _onpersonAddedSubscription;
  StreamSubscription<Event> _onpersonupdateSubscription;

//when open app that load db

  @override
  void initState() {
    super.initState();
    items = new List();
    //items1=new list();
    _onpersonAddedSubscription =
        personReference.onChildAdded.listen(_onpersonAdded);
    _onpersonupdateSubscription =
        personReference.onChildChanged.listen(_onpersonUpdated);
  }

//close db
  @override
  void dispose() {
    super.dispose();
    _onpersonAddedSubscription.cancel();
    _onpersonupdateSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'person DB',
      home: Scaffold(
        appBar: AppBar(
          title: Text('person information'),
          centerTitle: true,
          backgroundColor: Colors.orange[300],
        ),

        body: Center(
          child: ListView.builder(
              itemCount: items.length,
              padding: EdgeInsets.only(top: 12.0),
              itemBuilder: (context, position) {
                return Column(
                  children: <Widget>[
                    Divider(
                      height: 6.0,
                    ),
                    Card(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: ListTile(
                                title: Text(
                                  '${items[position].fname}',
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 22.0,
                                  ),
                                ),
                                subtitle: Text(
                                  '${items[position].city}',
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 14.0,
                                  ),
                                ),
                                leading: Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      backgroundColor: Colors.amberAccent,
                                      radius: 18.0,
                                      child: Text(
                                        '${position + 1}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                //transform to person information
                                onTap: () => _navigateTopersonInformation(
                                    context, items[position])),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              onPressed: () => _deleteperson(
                                  context, items[position], position)),

                          IconButton(
                            icon: Icon(
                              Icons.edit,
                              color: Colors.blue,
                            ),
                            // onPressed: () =>
                            //     _navigateToperson(context, items[position])
                          )
                        ],
                      ),
                    ),
                   
                  ],
                );
              }),
        ),

        //add new person
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.deepOrange,
          // onPressed: () => _createNewperson(context),
        ),
      ),
    );
  }

//add person to item list . screen refreashed
  void _onpersonAdded(Event event) {
    setState(() {
      items.add(new Person.fromSnapshot(event.snapshot));
    });
  }

  void _onpersonUpdated(Event event) {
    var oldpersonValue =
        items.singleWhere((person) => person.na_id == event.snapshot.key);
    setState(() {
      items[items.indexOf(oldpersonValue)] =
          new Person.fromSnapshot(event.snapshot);
    });
  }

 

// await ---> to delete frome database
  void _deleteperson(BuildContext context, Person person, int position) async {
    await personReference.child(person.na_id).remove().then((_) {
      setState(() {
        items.removeAt(position);
      });
    });
  }

// await ---> to update from database
  // void _navigateToperson(BuildContext context, Person person) async {
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => personScreen(person)),
  //   );
  // }

  void _navigateTopersonInformation(
      BuildContext context, Person person) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => personinformation(person)),
    );
  }

  // void _createNewperson(BuildContext context) async {
  //   await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //         builder: (context) => personScreen(Person(
  //               null,
  //               '',
  //               '',
  //               '',
  //               '',
  //               '',
  //               '',
  //               '',
  //               '',
  //               '',
  //             ))),
  //   );
  // }
}
