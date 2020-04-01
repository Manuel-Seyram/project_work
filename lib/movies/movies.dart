import 'package:flutter/material.dart';
import 'ui/screens/screens.dart';

void main() => runApp(Movies());

class Movies extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway'
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => HomeScreen(),
        VideoApp.route: (ctx) => VideoApp(),
      },
    );
  }
}
