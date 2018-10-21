import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: "Chat_app",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.red
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}