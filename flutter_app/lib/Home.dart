import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'SearchBox.dart';
import 'Status.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(new SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
    ));

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: new Text("Chat",textDirection: TextDirection.ltr,
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          color: Colors.black,
          fontStyle: FontStyle.normal
        ),),
        
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: new CircleAvatar(
            backgroundImage: new ExactAssetImage('images/atul1.jpeg'),
            radius: 5.0,
          ),

        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:20.0),
            child: Container(
              decoration: new BoxDecoration(
                  color: Colors.black12,
                  borderRadius: new BorderRadius.circular(30.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: new IconButton(icon: new Icon(Icons.add_call),
                  onPressed:() => debugPrint("clicked"),color: Colors.black,iconSize: 25.0,),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right:20.0),
            child: Container(
              decoration: new BoxDecoration(
                color: Colors.black12,
                borderRadius: new BorderRadius.circular(30.0)
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: new IconButton(icon: new Icon(Icons.add_a_photo),
                  onPressed:() => debugPrint("clicked"),color: Colors.black,iconSize: 25.0,),
              ),
            ),
          ),
        ],
      ),

      //create a body with the search box and many more


      body: ListView(
          children: <Widget>[
            new SearchBox(),
            Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  new Status("Vipul","images/vipul.jpg"),
                  new Status("Atul","images/vipul.jpg"),
                  new Status("Shivam","images/vipul.jpg"),
                  new Status("Vipul","images/vipul.jpg"),
                  new Status("Shivam","images/vipul.jpg"),
                  new Status("Atul","images/vipul.jpg"),
                  new Status("Vipul","images/vipul.jpg"),
                  new Status("Vipul","images/vipul.jpg"),
                ],
              ),
            ),
          ],),
    );
  }
}
