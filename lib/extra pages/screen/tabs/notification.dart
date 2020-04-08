import 'package:alleviate/screen/homePage.dart';
import 'package:flutter/material.dart';

class Notification extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: 'Notification',
        home: Scaffold(
          backgroundColor: Color(0xffe3f2fd),
          appBar: AppBar(
              title: new GestureDetector(
            child: new Icon(Icons.arrow_back, size: 55.0),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          )),
        ),
      ),
    );
  }
}
