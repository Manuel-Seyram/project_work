import 'package:flutter/material.dart';

class CheckBoxInListview extends StatefulWidget {
  @override
  _CheckBoxInListviewState createState() => _CheckBoxInListviewState();
}

class _CheckBoxInListviewState extends State<CheckBoxInListview> {
  bool _isChecked = false;

  List<String> _texts = [
    "Movies",
    "Music",
    "Exercise",
    "Games"
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      
      appBar: AppBar(
      
        title: Text("Choose Likes", textAlign: TextAlign.center,),
        backgroundColor: Colors.blue[100],
      ),
      
      body:
      
      new Stack(

        children:<Widget>[
      
      Center(
      
     child: Container(

       decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Artboardd.png"), fit:BoxFit.cover,),),
    
    child: ListView(
        
      
        padding: EdgeInsets.all(8.0),
        children: _texts.map((text) => CheckboxListTile(
          title: Text(text),
                        value: _isChecked,
                        onChanged: (val) {
                          setState(() {
                            _isChecked = val;
                            
                          });
                        },


        )
        
      ).toList(),



       )
       
      
      )

    
      )

        ]
      
    
      ),
      
      
      floatingActionButton: RaisedButton(onPressed: (){},
       textColor: Colors.white, 
       color: Colors.blue,
       child: new Text("    Finish    "),
       shape: RoundedRectangleBorder(
       borderRadius: new BorderRadius.circular(18.0),
       side: BorderSide(color: Colors.blue),
         ),
       ),
        
      

  
    );


    

  }

}



