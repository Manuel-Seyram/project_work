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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[ 
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage('assets/images/alleviatelogo.jpg')
                        //backgroundColor: Colors.transparent,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 350.0),
                      ),
                    ],
                  ),
                ),
              ),
               Expanded(
                       
                      child: RaisedButton(
                        width
                        child: Text("Approve"),
                        onPressed: () => null,
                      ),
               ),
                Expanded(
                      child: RaisedButton(
                        child: Text("Approve"),
                        onPressed: () => null,
                      ),
                )
            ]
          
          ),
        ]
      
        
      ),
    );
  }
}