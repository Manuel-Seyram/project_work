import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

AppBar appBar(String name) {

  return AppBar(
    leading: Text(""),
    title: Text(
      name,
      style: TextStyle(color: Colors.blue),
    ),
    // centerTitle: true,
    
    elevation: 0,
    backgroundColor: Colors.transparent,
    
    actions: <Widget>[
      IconButton(
          icon: Icon(
            Icons.notification_important,
            color: Colors.blue,
          ),
          onPressed: () {}),
      
    ],
 );
}

class Mydrawer extends StatefulWidget {
  @override
  _MydrawerState createState() => _MydrawerState ();
}


class _MydrawerState extends State <Mydrawer> {

@override

Widget build(BuildContext context) {

    return Scaffold(
      

      drawer: new Drawer (

              child:

                ListView(
                
                  children : <Widget>[

                    ListTile(

                      onTap: (){},
                      leading: Icon(Icons.arrow_back),
                      title: Text("Back"),
  
                    ),

                    ListTile(

                      onTap: (){},
                      leading: Icon(Icons.home),
                      title: Text("Home"),
                    ),

                    ListTile(

                      onTap: (){},
                      leading: Icon(Icons.settings),
                      title: Text("Settings"),
                    ),


                     ListTile(

                      onTap: (){},
                      leading: Icon(Icons.mood_bad),
                      title: Text("Logout"),
                    ),
            ]
          ),
                       

      ),

     
    );
  }


}
