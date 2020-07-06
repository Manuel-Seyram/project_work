import 'package:project_work/extra pages/screen/navigationbar.dart';
import 'package:project_work/SignUp.dart';
import 'package:project_work/extra pages/screen/tabs/contacts.dart';
import 'package:project_work/extra pages/screen/tabs/diary.dart';
import 'package:project_work/extra pages/screen/tabs/chats.dart';
import 'package:project_work/happy.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2979FF),

      // appBar: AppBar(
      //   title: Text("I;m a title"),
      // ),

      body: Column(children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 130.0),
              child: Text("   WELCOME",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 27.0)),
            ),
            // SizedBox(width: 12),
            Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: IconButton(
                  icon: Icon(Icons.notification_important),
                  onPressed: () {}
                  ),
            )
          ],
        ),
        Text("", style: TextStyle(color: Colors.white, fontSize: 18.0)),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Navigation()));
          },
          child: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/homeicon.png'),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage('assets/images/happyicon.png'),
          
              child: new GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
              
              ),
      
            ),
        
            //Text("Home", style: TextStyle(color: Colors.white, fontSize: 12.0)),
            CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage('assets/images/chaticon.png'),
              child: new GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat()));
                },
              ),
            ),
            // Text("Chat", style: TextStyle(color: Colors.white, fontSize: 12.0)),
          ],
        )),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/contacticon.png',),
                child: new GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Contacts()));
                  },
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/homeicon.png'),
              child: new GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
              ),
            ),
            //Text("Diary", style: TextStyle(color: Colors.white, fontSize: 12.0)),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/diaryicon.png'),
              child: new GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Diary()));
                },
              ),
            ),
            // Text("Contact",style: TextStyle(color: Colors.white, fontSize: 12.0)),
          ],
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          new GestureDetector(
            child: new Icon(Icons.keyboard_return, size: 50.0),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LogIn()));
            },
          ),
          Text("Logout", style: TextStyle(color: Colors.white, fontSize: 12.0)),
        ])
      ]),
    );
  }
}
