
import 'package:flutter/material.dart';
import 'package:whatsappui/home/call_widget.dart';
import 'package:whatsappui/home/chat_widget.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WhatsApp',
      theme: ThemeData(
          primaryColor: Color(0xFF128C7E)
      ),
      home: WhatsAppWidget(),
    );
  }
}

class WhatsAppWidget extends StatefulWidget {
  WhatsAppWidget({Key key}) : super(key: key);

  @override
  _WhatsAppWidgetState createState() => _WhatsAppWidgetState();
}

class _WhatsAppWidgetState extends State<WhatsAppWidget> {
  final appBar = AppBar(
    // Here we take the value from the MyHomePage object that was created by
    // the App.build method, and use it to set our appbar title.
    title: Text('WhatsApp'),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.search),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.more_vert),
      ),
    ],
    bottom: TabBar(
      tabs: <Widget>[
        Tab(text: 'CHATS'),
        Tab(text: 'STATUS'),
        Tab(text: 'CALLS'),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: appBar,
        body: TabBarView(
          children: <Widget>[
            ChatWidget(),
            Text('STATUS'),
            CallWidget()
          ],
        ),
      ),
    );
  }
}