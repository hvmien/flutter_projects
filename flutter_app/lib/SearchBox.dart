import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:40.0,right: 40.0,top: 10.0),
      child: Container(
        child: TextField(
          decoration: new InputDecoration(
            hintText: "Search",
            border: InputBorder.none,
            icon: new Icon(Icons.search)
          ),
        ),

        decoration: new BoxDecoration(
          color: Colors.black12,
           borderRadius: new BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
