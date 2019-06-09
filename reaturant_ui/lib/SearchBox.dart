import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: Colors.white,
        child:Padding(
          padding: const EdgeInsets.all(2.0),
          child: new TextField(
            decoration: new InputDecoration(
              hintText:
            "Search",
              border:InputBorder.none,
              icon: new Icon(Icons.search,color: Colors.grey,)
            ),


          ),
        )
      ),
    );
  }
}
