import 'package:flutter/material.dart';
import 'package:meteoapp/page/HomePage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return( MaterialApp(
    theme:ThemeData.dark(),
    home: 
    Scaffold(
        body:HomePage()
    
    ,)
    ,));
  }

}
