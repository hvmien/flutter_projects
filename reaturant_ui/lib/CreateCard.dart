import 'package:flutter/material.dart';

class CreateCard extends StatefulWidget {
  @override
  _CreateCardState createState() => _CreateCardState();
}

class _CreateCardState extends State<CreateCard> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        //itemBuilder: ,
         scrollDirection: Axis.horizontal,);
  }
}



