import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'loginscreens.dart';
import 'splash.dart';





var routes = <String, WidgetBuilder>{
  
  "/intro": (BuildContext context) => Loginscreens(),
};

void main() => runApp(new MaterialApp(
    theme:
        ThemeData(primaryColor: Colors.lightBlueAccent,),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));