import 'package:flutter/material.dart';
import 'CircleIndicator.dart';
class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image(
                height: 50.0,
                width: 60.0,
                image: ExactAssetImage('images/whatsapp.png')),
            new Text("Share Love ! \nOne more Step ahead!!",textDirection: TextDirection.ltr,
              style: new TextStyle(
                fontStyle: FontStyle.normal,
                color: Colors.white,
                fontSize: 18.0,
              ),),
            new CircleIndicator(),
          ],
        ),
      ),
    );
  }
}
