import 'package:flutter/material.dart';
import 'signup.dart';
import 'extra pages/screen/loginPage.dart';

class Loginscreens extends StatefulWidget {
  @override
  _LoginscreensState createState() => _LoginscreensState();
}

class _LoginscreensState extends State<Loginscreens> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.black),
          ),
            CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 5.0,
                        backgroundImage: AssetImage('assets/logo/alleviate logo.png', ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.0),
                      ),
                      Text(
                        'Alleviate',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      ),

        
         ] ,
      )
    );
  }
}