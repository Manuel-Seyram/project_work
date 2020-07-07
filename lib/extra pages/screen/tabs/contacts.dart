import 'package:flutter/material.dart';
import 'package:project_work/alleviatechat/screens/home_screen.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      
        title: Text("Contacts", textAlign: TextAlign.center,),
        backgroundColor: Colors.white,
      ),
      

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






        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            items(context, "Career and Counselling", ""),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                items(context, "Psychologist", ""),
                items(context, "Therapist", ""),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(
                MediaQuery.of(context).size.width * 0.15,
              ),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  // width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: 25,
                  child: FlatButton(
                    child: Text(
                      "GET HELP NOW",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()) );
                    },
                  )),
            ),
            Text(
              "CALL TEL:+233 204 999 221 / +233 245 945 752",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              "Email: career@ug.edu.gh",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              "Website: careers.ug.edu.gh",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue),
            )
          ],
        ));
  }
}

Widget items(BuildContext context, String text, String image) {
  return Container(
    child: Column(
      children: <Widget>[
        ClipOval(
          child: Image.asset(
            'assets/images/messageIM.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.height * 0.18,
          ),
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    ),
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

