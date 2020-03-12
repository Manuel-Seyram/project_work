import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main(List<String>args){
  
 runApp(new MaterialApp(
   
   home : MyApp(),
 ));

}

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

              MyMenu(title: "Movies", icon: Icons.movie, warna: Colors.blue),
              MyMenu(title: "Music", icon: Icons.headset, warna: Colors.blue),
              MyMenu(title: "Games", icon: Icons.mood, warna: Colors.blue), 
              MyMenu(title: "Exercise", icon: Icons.directions_run, warna: Colors.blue),
              MyMenu(title: "Favourite", icon: Icons.favorite, warna: Colors.blue),
             
               
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


class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.warna});

final String title;
final IconData icon;
final MaterialColor warna; 



  @override
  Widget build(BuildContext context){
    return  Card(
                 margin: EdgeInsets.all(9.0),
                 child: InkWell(
                   onTap: (){},
                   splashColor: Colors.blue,
                   child: Center(
                     child: Column(
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                         Icon(icon, size: 80.0, color: warna),
                         Text(title, style: new TextStyle(fontSize: 18.0))
                       ],
                     )
                   ),
                 ),

               );
                

    
  }
  
}


