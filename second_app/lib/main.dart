import 'package:flutter/material.dart';
import 'package:second_app/pages/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Computer's Today",
      home: HomePage(),
    );
  }

}