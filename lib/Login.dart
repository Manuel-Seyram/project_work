import 'package:flutter/material.dart';
import 'extra pages/screen/welcome.dart';



class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => new _LogInState();
}


class _LogInState extends State <LogIn> {


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
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
         icon: Icon(Icons.mail)
      ),
    );


     final passwordField = TextField(
      obscureText: true,
      style: style,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
         icon: Icon(Icons.vpn_key)
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
            context, MaterialPageRoute(builder: (context)=> Welcome())
          );
        },
        child: Text("Log In", textAlign:TextAlign.center , style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold)), // text
      ),

    );


    return Scaffold(

      resizeToAvoidBottomInset: false,
      

   // backgroundColor: Colors.blue[200],
      body:new Stack(
      
      
    

        children: <Widget>[


          Center(
            
            child: Container(
              //color: Colors.blue[200],
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/Artboard.png"), fit:BoxFit.cover,),),
              child: Padding(padding: const EdgeInsets.all(36.0),  
              child: Column( crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                SizedBox( height: 15.0,),
                Text("Log In", style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontFamily: 'Pacifico', fontSize:50.0),),
                
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
