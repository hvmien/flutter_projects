import 'package:flutter/material.dart';
class FastFoodCard extends StatefulWidget {

  String foodName;
  String imagePath;
  FastFoodCard({Key key,this.foodName,this.imagePath}) : super(key:key);
  @override
  _FastFoodCardState createState() => _FastFoodCardState();
}

class _FastFoodCardState extends State<FastFoodCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        child: new Card(

          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[

              new Stack(
                children: <Widget>[
                  new Image(image: ExactAssetImage(widget.imagePath),
                    fit: BoxFit.fill,
                    height: 100.0,
                    width: 100.0,
                  ),
                ],
              ),

              new Container(
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(widget.foodName,textDirection: TextDirection.ltr,style: new TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                            letterSpacing: 1.0,
                            wordSpacing: 2.0,
                            fontWeight: FontWeight.bold
                        ),),

                        new Container(
                          child: new Row(
                            children: <Widget>[
                              new Icon(Icons.star,
                                color: Colors.yellow,
                                size: 15.5,),
                              new Icon(Icons.star,
                                color: Colors.yellow,size: 15.5,),
                              new Icon(Icons.star,
                                color: Colors.yellow,size: 15.5,),
                              new Icon(Icons.star_half,size: 15.5,
                                color: Colors.yellow,),
                              new Icon(Icons.star_half,
                                color: Colors.yellow,size: 15.5,),

                              new Text("(buy)",textDirection: TextDirection.ltr,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                ),)
                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
