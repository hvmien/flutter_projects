import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'SearchBox.dart';
import 'Chatted.dart';
import 'Status.dart';
import 'main.dart';
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
                  new Status(
                    name: "Vipul",
                    path: "images/atul1.jpeg",
                  ),
                  new Status(
                    name: "Atul",
                    path: "images/atul2.jpeg",
                  ),
                  new Status(
                    name: "Shivam",
                    path: "images/shivam.jpg",
                  ),
                  new Status(
                    name: "Atul",
                    path: "images/atul2.jpeg",
                  ),
                  new Status(
                    name: "Shivam",
                    path: "images/vipul.jpg",
                  ),
                  new Status(
                    name: "Shivam",
                    path: "images/shivam.jpg",
                  ),


                ],
              ),
            ),

            //Starting inbox messages

            new Container(

              child: new ListTile(
                leading: Container(
                  decoration: new BoxDecoration(
                    color: Colors.black12,
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: new Icon(
                      Icons.message,
                      size: 30.0,
                      color: Colors.black ,
                    ),
                  ),
                ),
                title: new Text("New Message Requests",textDirection: TextDirection.ltr,style:new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,

                ),
                ),
                subtitle: new Text("From Tanu Kumari",textDirection: TextDirection.ltr,style:new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,

                ),
                ),
              ),
            ),

            GestureDetector(
              child: new Chatted(
                name: "Mamta Banerjee",
                message: "Jai shree ram didi..",
                time: "1m",
                path: 'images/mamta.jpg',
              ),
              onTap: ()
              {
                Navigator.push(context, new MaterialPageRoute(builder: (context) => new Home(),),);
              },
            ),
            new Chatted(
              name: "Vijay Malia",
              message: "Jaldi aao Chor aadmi..",
              time: "30m",
              path: 'images/vijay.jpeg',
            ),
            new Chatted(
              name: "Katrina",
              message: "talk to u later..",
              time: "7m",
              path: 'images/mamta.jpg',
            ),
            new Chatted(
              name: "Narendra Modi",
              message: "congratulation sir!",
              time: "13m",
              path: 'images/modi.jpg',
            ),
            new Chatted(
              name: "Abhishiek Anand",
              message: "Kaisa h bhy",
              time: "10m",
              path: 'images/shivam.jpg',
            ),
            new Chatted(
              name: "Vipul Sinha",
              message: "Paisa kab dega?",
              time: "10m",
              path: 'images/vipul.jpg',
            ),







          ],),


      bottomNavigationBar: new BottomNavigationBar(items:
          [
            new BottomNavigationBarItem(icon: new Icon(Icons.mail),backgroundColor: Colors.black,title: new Text("")),
            new BottomNavigationBarItem(icon: new Icon(Icons.cake),backgroundColor: Colors.black38,title: new Text("")),
            new BottomNavigationBarItem(icon: new Icon(Icons.color_lens),backgroundColor: Colors.black,title: new Text("")),
          ]
      ),
    );
  }
}
