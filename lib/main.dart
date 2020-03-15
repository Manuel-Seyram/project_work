import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


void main(List<String>args){
  
 runApp(new MaterialApp(
   
   home : SignUp(),
 ));

}





class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => new _SignUpState();
}


class _SignUpState extends State <SignUp> {


 TextStyle style = TextStyle (fontFamily: '', fontSize: 20.0, color: Colors.black);


  
   @override
  Widget build(BuildContext context) {


    final emailField = TextField(
      obscureText: false,
      style: style,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );


     final passwordField = TextField(
      obscureText: true,
      style: style,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );



    final registerButton = Material(

      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
          Navigator.push(
            context, MaterialPageRoute(builder: (context)=> CheckBoxInListview())
          );
        },
        child: Text("Proceed", textAlign:TextAlign.center , style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)), // text
      ),

    );


    return Scaffold(
      

   // backgroundColor: Colors.blue[200],
      body:new Stack(
      
      
    

        children: <Widget>[


          Center(
            
            child: Container(
              //color: Colors.blue[200],
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/login.jpg"), fit:BoxFit.cover,),),
              child: Padding(padding: const EdgeInsets.all(36.0),  
              child: Column( crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                SizedBox( height: 15.0,),
                Text("Register", style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontFamily: 'Pacifico', fontSize:50.0),),
                
                SizedBox( height: 45.0),

                emailField,

                SizedBox( height: 25.0),

                passwordField,

                SizedBox( height: 25.0),
                registerButton,
                SizedBox( height: 15.0),

               
              ]
              
),
             
              ),
             
            ),
          )
      

        ],

        
      ),

    );


  
    
  }


  

}



//new page to checkbox

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

    final proceedButton = Material(

      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){
          
        },
        child: Text("Register", textAlign:TextAlign.center , style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)), // text
      ),

    );






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


        )).toList(),
        
      ),
    );
  }
}