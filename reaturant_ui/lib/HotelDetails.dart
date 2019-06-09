import 'package:flutter/material.dart';
import 'CustomClipperImage.dart';
import 'FastFoodCard.dart';
class HotelDetails extends StatefulWidget {
  @override
  _HotelDetailsState createState() => _HotelDetailsState();
}

class _HotelDetailsState extends State<HotelDetails> {


  var fastFoodAdded=List<FastFoodCard>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fastFoodAdded.add(new FastFoodCard(
      foodName: "Chicken Burger",
      imagePath: 'images/food1.jpeg',
    ));

    fastFoodAdded.add(new FastFoodCard(
      foodName: "Paneer Burger",
      imagePath: 'images/food2.jpg',
    ));

    fastFoodAdded.add(new FastFoodCard(
      foodName: "Chicken Lollypop",
      imagePath: 'images/fast3.png',
    ));

    fastFoodAdded.add(new FastFoodCard(
      foodName: "Chicken Sandwhiich",
      imagePath: 'images/fast4.jpg',
    ));
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
          new ClipPath(
          clipper: new CustomClipperImage(),
            child: Container(
                color: Colors.red,
                height: 220.0,
              width: MediaQuery.of(context).size.width,
            )
              ),

                  new ClipPath(
                      clipper: new CustomClipperImage(),
                      child: Container(
                          color: Colors.red,
                          child: new Image(image: ExactAssetImage('images/res3.jpg')))
                  ),
                ],
              ),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text("Hakimm Restaurant",textDirection: TextDirection.ltr,style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left:8.0,top: 3.0),
                child: new Container(
                  child: new Row(
                    children: <Widget>[
                      new Icon(Icons.star,
                        color: Colors.yellow,
                        size: 25.5,),
                      new Icon(Icons.star,
                        color: Colors.yellow,size: 25.5,),
                      new Icon(Icons.star,
                        color: Colors.yellow,size: 25.5,),
                      new Icon(Icons.star_half,size: 25.5,
                        color: Colors.yellow,),
                      new Icon(Icons.star_half,
                        color: Colors.yellow,size: 25.5,),

                      new Text("(95764)",textDirection: TextDirection.ltr,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                        ),)
                    ],
                  ),
                ),
              ),


              new Wrap(
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text("When it comes to food experience your Ramadan, your way! This ramadan, enjoy 20% -50% discount from 1000+ restaurants.",textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400
                      ),),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: new Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  child: Center(
                    child: new Text("Book a Table in Hakeem",textDirection: TextDirection.ltr,
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white
                    ),),
                  ),
                  decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    color: Colors.red,
                  ),
                ),
              ),


          new Container(
    child: new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left:8.0),
          child: GestureDetector(
            child: new Text("Hakeem's Best Food",textDirection: TextDirection.ltr,style: new TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w700
            ),),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: new Text("See All",textDirection: TextDirection.ltr,style: new TextStyle(
              color: Colors.grey,
              fontSize: 15.0,
              fontWeight: FontWeight.w400
          ),),
        ),

      ],
    ),
    ),


              Container(
                height: 150.0,
                child: new ListView.builder(itemBuilder:
                (_,index) => fastFoodAdded[index],
                scrollDirection: Axis.horizontal,
                itemCount: fastFoodAdded.length,),
              )

    ],
    ),
    ),
    ),
    );


  }
}
