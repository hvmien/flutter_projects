import 'package:flutter/material.dart';
class Status extends StatefulWidget {
  final String name,path;
  Status({Key key,this.name,this.path}) : super(key:key);
  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                new CircleAvatar(
                  backgroundImage: new ExactAssetImage(widget.path),
                  radius: 30.0,

                ),

                Positioned(
                  top: 45.0,
                  left: 43.0,
                  child: new Container(
                    height: 12.0,
                    width: 12.0,
                    decoration: new BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                ),
              ],
            ),
            new Text(widget.name,textDirection: TextDirection.ltr,
            style: new TextStyle(
              color: Colors.black38,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}
