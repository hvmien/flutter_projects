import 'package:flutter/material.dart';

class Chatted extends StatefulWidget {
  final String name,message,path,time;
  Chatted({Key key,this.name,this.message,this.path,this.time}) : super(key:key);
  @override
  _ChattedState createState() => _ChattedState();
}

class _ChattedState extends State<Chatted> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ListTile(
        leading:  new Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            new CircleAvatar(
              backgroundImage: new ExactAssetImage(widget.path),
              radius: 30.0,

            ),

            Positioned(
              top: 45.0,
              left: 40.0,
              child: new Container(
                height: 12.0,
                width: 22.0,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: new Text(widget.time,textDirection: TextDirection.ltr,
                  style: new TextStyle(fontSize: 8.0, color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                decoration: new BoxDecoration(
                    color: new Color(0xffffe0b2),
                    borderRadius: BorderRadius.circular(5.0)
                ),
              ),
            ),
          ],
        ),
        title: new Text(widget.name,textDirection: TextDirection.ltr,
          style: new TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),),

        subtitle: new Text("you:${widget.message}",textDirection: TextDirection.ltr,
        style: new TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w400
        ),),
        ),

    );
  }
}
