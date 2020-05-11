import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:random_words/random_words.dart';

class ChatWidget extends StatelessWidget {

  String getMessageTime(int value) {
    var now = new DateTime.now();
    now = now.add(Duration(hours: value));
    var formatter = new DateFormat('hh:mm a');
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
              subtitle: Text(generateWordPairs().take(1).elementAt(0).asPascalCase),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text(getMessageTime(i+1))],
              ),
            );
        }
    );
  }

}