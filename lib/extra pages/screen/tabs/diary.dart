import 'package:flutter/material.dart';

class Diary extends StatefulWidget {
  @override
  _DiaryState createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
      
        title: Text("Diary", textAlign: TextAlign.center,),
        backgroundColor: Color(0xffe3f2fd),
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







      backgroundColor: Color(0xffe3f2fd),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.02,
                          top: MediaQuery.of(context).size.width * 0.05,
                          bottom: MediaQuery.of(context).size.width * 0.05,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "TITLE:",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "PROJECT DESIGN",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: <Widget>[
                                Text(
                                  "DATE:",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Expanded(
                                  child: Text(
                                    "February 2018",
                                    style: TextStyle(color: Colors.white),
                                    textAlign: TextAlign.left,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: 15,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CircleAvatar(
        child: Icon(Icons.add),
      ),
    );
  }
}

