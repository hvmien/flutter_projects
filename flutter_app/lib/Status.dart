import 'package:flutter/material.dart';
class Status extends StatefulWidget {
  String name,pathToImage;
  Status(String name,String pathToImage)
  {
    this.name=name;
    this.pathToImage=pathToImage;
  }
  @override
  _StatusState createState() => _StatusState(name, pathToImage);
}

class _StatusState extends State<Status> {
  String name,pathToImage;

  _StatusState(String name , String pathTomage){
    this.name=name;
    this.pathToImage=pathToImage;
  }
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
                  backgroundImage: new ExactAssetImage(pathToImage.toString()),
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
            new Text("$name",textDirection: TextDirection.ltr,
            style: new TextStyle(
              color: Colors.black12,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}
