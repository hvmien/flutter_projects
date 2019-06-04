import 'package:flutter/material.dart';
import 'Home.dart';
void main()
{
  runApp(new MaterialApp(
    title: "Welcome to messenger",
    home: new Home(),
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primaryColor: Colors.black,
      primaryColorDark: Colors.green,

    ),
  ));
}