import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_work/movies/movies.dart';
import 'music/music.dart';
import 'movies/movies.dart';
import 'package:url_launcher/url_launcher.dart';
import 'extra pages/screen/tabs/diary.dart';
import 'extra pages/screen/tabs/contacts.dart';
import 'extra pages/screen/tabs/chats.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState ();
}


class _MyAppState extends State <MyApp> {
  int _selectedItemPosition = 0;
  Widget _pageChoser(int page) {

    switch (page) {
      case 0:
        return Chat();
        break;
      case 1:
        return MyApp();
        break;
      case 2:
        return Diary();

        break;
      case 3:
        return Contacts();
        break;
      default:
        return Container(
            child: Center(
          child: Text("No page found"),
        ));
        
    }
  }


  @override 
  
  Widget build(BuildContext context) {

    return Scaffold( 

         appBar: new AppBar(
           title: Text("Happy"),
           backgroundColor: Colors.blue,
         ),

  

         backgroundColor: Colors.blue[100] ,


         drawer: new Drawer (

              child: ListView(
              
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

              

         body:

         _pageChoser(_selectedItemPosition),

         
         Container(
           
           padding: EdgeInsets.all(20.0),
           child: GridView.count(
             crossAxisCount: 2,
             children: <Widget>[

              Card(
                 margin: EdgeInsets.all(9.0),
                 child: InkWell(
                   onTap: (){
                     Navigator.push(
            context, MaterialPageRoute(builder: (context)=> Movies())
            );

                   },
                   splashColor: Colors.blue,
                   child: Center(
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                         Icon(Icons.movie, color: Colors.blue, size:80.0 ,),
                         Text("Movies", style: new TextStyle(fontSize: 18.0))
                          
                      
                       ],
                      
                     )
                   ),
                 ),

               ),

                Card(
                 margin: EdgeInsets.all(9.0),
                 child: InkWell(
                   onTap: (){

                     Navigator.push(
            context, MaterialPageRoute(builder: (context)=> Music())
          );

                   },
                   splashColor: Colors.blue,
                   child: Center(
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                         Icon(Icons.headset, color: Colors.blue, size:80.0 ,),
                         Text("Music", style: new TextStyle(fontSize: 18.0))
                          
                      
                       ],
                      
                     )
                   ),
                 ),

               ),

                Card(
                 margin: EdgeInsets.all(9.0),
                 child: InkWell(
                   onTap: () async {
                         const url = 'https://m.silvergames.com/';

                      if (await canLaunch(url)) {
                      await launch(url, forceWebView: true);
                    } else {
                      throw 'Could not launch $url';
                       }
                      },

                   
                   splashColor: Colors.blue,
                   child: Center(
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                         Icon(Icons.mood, color: Colors.blue, size:80.0 ,),
                         Text("Games", style: new TextStyle(fontSize: 18.0))
                          
                      
                       ],
                      
                     )
                   ),
                 ),

               ),

                Card(
                 margin: EdgeInsets.all(9.0),
                 child: InkWell(
                   onTap: () async {
                         const url = 'https://www.calm.com/';

                      if (await canLaunch(url)) {
                      await launch(url, forceWebView: true);
                    } else {
                      throw 'Could not launch $url';
                       }
                      },

                   splashColor: Colors.blue,
                   child: Center(
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                         Icon(Icons.directions_run, color: Colors.blue, size:80.0 ,),
                         Text("Exercise", style: new TextStyle(fontSize: 18.0))
                          
                      
                       ],
                      
                     )
                   ),
                 ),

               ),

                Card(
                 margin: EdgeInsets.all(9.0),
                 child: InkWell(
                   onTap: () async {
                         const url = 'https://www.wattpad.com/';

                      if (await canLaunch(url)) {
                      await launch(url, forceWebView: true);
                    } else {
                      throw 'Could not launch $url';
                       }
                      },

                   
                   splashColor: Colors.blue,
                   child: Center(
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                         Icon(Icons.import_contacts, color: Colors.blue, size:80.0 ,),
                         Text("Read", style: new TextStyle(fontSize: 18.0))
                          
                      
                       ],
                      
                     )
                   ),
                 ),

               ),
               
             ],
           ),
           
         ),

         
         

      bottomNavigationBar: SnakeNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        style: SnakeBarStyle.pinned,
        backgroundColor: Colors.blue,
        selectionColor: Color(0xffe3f2fd),
        selectedIconColor: Colors.blue,
        snakeShape: SnakeShape.circle,

        //  backgroundColor:  Color.fromRGBO(244, 128, 71, 1),
        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                color: Colors.white,
              ),
              title: Text(
                'Chat',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.live_tv, color: Colors.white),
              title: Text(
                'Happy',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt, color: Colors.white),
              title: Text(
                'Diary',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.white),
              title: Text(
                'Contacts',
                style: TextStyle(
                  color: Colors.white,
                ),
              )),
        ],
      ),
         
    );
    
  }
  
}








