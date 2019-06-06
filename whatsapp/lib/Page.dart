import 'package:flutter/material.dart';
import 'FirstPage.dart';
import 'SecondPage.dart';

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new PageView(
        children: <Widget>[
          new Container(
            color: Colors.green,
            child: new Firstpage(),
          ),
          new Container(
            color: Colors.green,
            child: new SecondPage(),
          ),
          new Container(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
