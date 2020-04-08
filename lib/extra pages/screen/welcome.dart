import 'package:alleviate/screen/homePage.dart';
import 'package:alleviate/screen/loginPage.dart';
import 'package:alleviate/screen/tabs/contacts.dart';
import 'package:alleviate/screen/tabs/diary.dart';
import 'package:alleviate/screen/tabs/happy.dart';
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
              child: Text("WELCOME!!!",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 25.0)),
            ),
            // SizedBox(width: 12),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: IconButton(
                  icon: Icon(Icons.notification_important),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Diary()));
                  }),
            )
          ],
        ),
        Text("Takoradi", style: TextStyle(color: Colors.white, fontSize: 18.0)),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: CircleAvatar(
            radius: 60,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.hourglass_full,
                  size: 50,
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              child: new GestureDetector(
                child: new Icon(Icons.home, size: 55.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Happy()));
                },
              ),
            ),
            //Text("Home", style: TextStyle(color: Colors.white, fontSize: 12.0)),
            CircleAvatar(
              radius: 60,
              child: new GestureDetector(
                child: new Icon(
                  Icons.chat,
                  size: 55.0,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Diary()));
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
                child: new GestureDetector(
                  child: new Icon(Icons.home, size: 55.0),
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
              child: new GestureDetector(
                child: new Icon(Icons.mood, size: 55.0),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Happy()));
                },
              ),
            ),
            //Text("Diary", style: TextStyle(color: Colors.white, fontSize: 12.0)),
            CircleAvatar(
              radius: 70,
              child: new GestureDetector(
                child: new Icon(Icons.contacts, size: 60.0),
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
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          Text("Logout", style: TextStyle(color: Colors.white, fontSize: 12.0)),
        ])
      ]),
    );
  }
}
