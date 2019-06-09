import 'package:flutter/material.dart';
import 'StarRating.dart';

class CreateCardUi extends StatefulWidget {

  String imagePath,restaurantName,starRating,status;

  CreateCardUi({Key key,this.imagePath,this.restaurantName,this.starRating,this.status}) : super(key:key);

  @override
  _CreateCardUiState createState() => _CreateCardUiState();
}

class _CreateCardUiState extends State<CreateCardUi> {
  var rating=3.5;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: new Card(

          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[

              new Stack(
                children: <Widget>[
                  new ClipRRect(
                    borderRadius: new BorderRadius.only(topLeft:Radius.circular(10.0),topRight: Radius.circular(10.0)),
                    child: new Image(image: ExactAssetImage(widget.imagePath),
                      fit: BoxFit.fill,
                      height: 100.0,
                      width: 200.0,
                      color: Colors.black26,
                      colorBlendMode: BlendMode.darken,
                    ),

                  ),

                  Positioned(
                    left: 5.0,
                    top: 10.0,
                    child: new Container(
                      child: new Text(widget.status,textDirection: TextDirection.ltr,style: new TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          letterSpacing: 1.0,
                          wordSpacing: 2.0,
                          fontWeight: FontWeight.bold
                      ),),
                        decoration: new BoxDecoration(
                          borderRadius: new BorderRadius.circular(2.0),
                          color: Colors.black45
                        ),
                    ),
                  ),

                  Positioned(
                    bottom: 5.0,
                    right: 5.0,
                    child: new Container(
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
                         new Text(widget.restaurantName,textDirection: TextDirection.ltr,style: new TextStyle(
                             color: Colors.black,
                             fontSize: 13.0,
                             letterSpacing: 1.0,
                             wordSpacing: 2.0,
                             fontWeight: FontWeight.bold
                         ),),

                         new Text("Mp nagar, Bhopal",textDirection: TextDirection.ltr,style: new TextStyle(
                             color: Colors.grey,
                             fontSize: 13.0,
                             letterSpacing: 1.0,
                             wordSpacing: 2.0,
                             fontWeight: FontWeight.w400
                         ),),
                       ],
                     ),

                     Padding(
                       padding: const EdgeInsets.only(left:40.0),
                       child: new Container(
                         child: Padding(
                           padding: const EdgeInsets.all(2.0),
                           child: new Icon(Icons.add,color: Colors.white,size: 20.0,),
                         ),
                         decoration: new BoxDecoration(
                           color: Colors.blue,
                           borderRadius: BorderRadius.circular(15.0)
                         ),
                       ),
                     )

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

