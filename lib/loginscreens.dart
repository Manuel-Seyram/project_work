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
                        backgroundImage: AssetImage('assets/images/alleviatelogo.jpg'),
                        backgroundColor: Colors.black,
                        //backgroundColor: Colors.transparent,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 100.0),
                      ),
                    ],
                  ),
                ),
              ),

               Center(
                    
                      child: RaisedButton(
                        child: Text("                       Login                            "),
                        onPressed: (){
                           Navigator.push(
                          context, MaterialPageRoute(builder: (context)=> LoginPage())
                          );
                        },
                        color: Colors.blue,
                         shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                       side: BorderSide(color: Colors.blue, width:7.0)
                       ),
                      ),
               ),

                Center(
                      child: RaisedButton(
                        child: Text("      No Account? Sign Up       "),
                        onPressed: (){
                           Navigator.push(
                           context, MaterialPageRoute(builder: (context)=> SignUp())
                          );
                        },
                        color: Colors.white,
                         shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                       side: BorderSide(color: Colors.white, width:7.0)
                       ),
                      ),
                )
            ]
          
          ),
        ]
      
        
      ),
    );
  }
}