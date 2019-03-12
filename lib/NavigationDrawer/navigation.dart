import 'package:flutter/material.dart';
import 'homepage.dart';

void main() => runApp(new MyDrawer());

class MyDrawer extends StatelessWidget{
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'NavigationDrawer Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new NavigationDrawerPage(),
    );
  }
}