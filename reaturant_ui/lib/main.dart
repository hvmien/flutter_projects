import 'package:flutter/material.dart';
import 'MakeResturantUi.dart';

void main(){
  runApp(new MaterialApp(
    title: "Be Resturant",
    debugShowCheckedModeBanner: false,
    home: new MakeResturantUi(),
    theme: new ThemeData(
      primaryColor: Colors.blue,
    ),

  ));
}