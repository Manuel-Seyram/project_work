import 'package:flutter/material.dart';

class CheckBoxInListview extends StatefulWidget {
  @override
  _CheckBoxInListviewState createState() => _CheckBoxInListviewState();
}

class _CheckBoxInListviewState extends State<CheckBoxInListview> {
  bool _isChecked = true;

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
        title: Text("Select likes to proceed with registration"),
        backgroundColor: Colors.blue,
      ),
      
      body: ListView(
        
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


    
      ),
      floatingActionButton: RaisedButton(onPressed: (){}),
    
    );


    

  }

}



