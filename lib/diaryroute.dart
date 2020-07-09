import 'package:flutter/material.dart';
import 'Diary/Utils/theme_bloc.dart';
import 'Diary/Views/home_view.dart';
import 'Diary/Classes/theme_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Diaryroute extends StatefulWidget {
  @override
  _DiaryrouteState createState() => new _DiaryrouteState();
}

final routeObserver = RouteObserver<PageRoute>();

class _DiaryrouteState extends State<Diaryroute> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getTheme(),
      builder: (builder, snapshot) {
        if (snapshot.data == null) {
          return MaterialApp(
            home: Scaffold(
              body: Center(
                child: Text('Loading'),
              ),
            ),
          );
        } else {
          return StreamBuilder(
            stream: bloc.darkThemeEnabled,
            initialData: snapshot.data,
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return MaterialApp(
                  home: Scaffold(
                    body: Center(
                      child: Text('Loading Data'),
                    ),
                  ),
                );
              } else {
                return MaterialApp(
                  title: 'Diary',
                  theme: snapshot.data ? Themes.light : Themes.dark,
                  navigatorObservers: [routeObserver],
                  home: HomeView(snapshot.data),
                );
              }
            },
          );
        }
      },
    );
  }

  _getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool val = prefs.getBool('darkTheme');
    if(val == null){
      val = true;
    }
    print(val);
    return val;
  }
}