import 'package:flutter/material.dart';
import 'CircleIndicator.dart';
class Firstpage extends StatefulWidget {
  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight=MediaQuery.of(context).size.height;
    var screenWidth=MediaQuery.of(context).size.width;
    return new Stack(
      children: <Widget>[
        Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Image(colorBlendMode: BlendMode.darken,
                  height: 80.0,
                  width: 80.0,
                  image: ExactAssetImage('images/whatsapp.png'),
                fit: BoxFit.fill,),

                new Text("Start messaging with your \nloved Ones!",textDirection: TextDirection.ltr,
                style: new TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  fontSize: 18.0,
                ),),


                new CircleIndicator(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Read Terms and Conditions",textDirection: TextDirection.ltr,
                    style: new TextStyle(
                      fontStyle: FontStyle.normal,
                      color: new Color(0xff075e54),
                      fontSize: 14.0,
                      decoration: TextDecoration.underline,
                    ),),
                ),

              ],
            ),
          ),
        )
      ],
    );
  }
}
