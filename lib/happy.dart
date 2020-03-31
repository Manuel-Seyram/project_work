import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'music/music.dart';



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState ();
}


class _MyAppState extends State <MyApp> {


     //BOTOM NAVIGATION
   int selectedIndex = 0;
  final widgetOptions = [
    Text('Home'),
    Text('Chats'),
    Text('Diary'),
    Text("Contacts"),
  ];


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

         body: Container(
           
           padding: EdgeInsets.all(20.0),
           child: GridView.count(
             crossAxisCount: 2,
             children: <Widget>[

              Card(
                 margin: EdgeInsets.all(9.0),
                 child: InkWell(
                   onTap: (){

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
                   onTap: (){

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
                   onTap: (){

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
                   onTap: (){

                   },
                   splashColor: Colors.blue,
                   child: Center(
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                         Icon(Icons.favorite, color: Colors.blue, size:80.0 ,),
                         Text("Favorites", style: new TextStyle(fontSize: 18.0))
                          
                      
                       ],
                      
                     )
                   ),
                 ),

               ),
               
             ],
           )
         ),

             //BOTTOM NAVIGATION
         bottomNavigationBar: BottomNavigationBar(
          
           items: <BottomNavigationBarItem>[


          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.home),
             title: Text('Home')
             ),

             
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
              icon: Icon(Icons.chat), 
              title: Text('Chats')
              ),


          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
              icon: Icon(Icons.chrome_reader_mode), 
              title: Text('Diary')
        
              ),


              BottomNavigationBarItem(
                backgroundColor: Colors.blue,
              icon: Icon(Icons.contacts), 
              title: Text('Contacts')
              ),


        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.blue[100],
        onTap: onItemTapped,


    )
    );
  }


      //BOTOM NAVIGATION
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

}








