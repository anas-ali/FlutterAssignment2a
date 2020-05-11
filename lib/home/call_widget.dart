import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CallWidget extends StatelessWidget {

  String getCallTime(int value) {
    var now = new DateTime.now();
    now = now.add(Duration(hours: value, days: value));
    var formatter = new DateFormat('EEEE, hh:mm a');
    return formatter.format(now);
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person),
            ),
            title: Text(Faker().person.name()),
            subtitle: Container(
              child: Text(getCallTime(i) ),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Icon(Icons.call)],
            ),
          );
        }
    );
  }

}