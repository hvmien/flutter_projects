import 'package:flutter/material.dart';
import 'CustomClipperHead.dart';
import 'package:flutter/services.dart';
import 'SearchBox.dart';
import 'CreateCard.dart';
import 'CreateCardUi.dart';
import 'FastFoodCard.dart';
import 'HotelDetails.dart';

class MakeResturantUi extends StatefulWidget {
  @override
  _MakeResturantUiState createState() => _MakeResturantUiState();
}

class _MakeResturantUiState extends State<MakeResturantUi> {

  var cardAdded=List<CreateCardUi>();
  var fastFoodAdded=List<FastFoodCard>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(new SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
    ));
    cardAdded.add(new CreateCardUi(
      imagePath: 'images/res2.jpeg',
      restaurantName: "Hakeem Restaurant",
      starRating: "4.5",
      status: "OPEND",
    ));

    cardAdded.add(new CreateCardUi(
      imagePath: 'images/res1.jpeg',
      restaurantName: "Madina Restaurant",
      starRating: "4.5",
      status: "CLOSED",
    ));

    cardAdded.add(new CreateCardUi(
      imagePath: 'images/res3.jpg',
      restaurantName: "Punjabi Restaurant",
      starRating: "4.5",
      status: "OPEND",
    ));
    fastFoodAdded.add(new FastFoodCard(
      foodName: "India Food",
      imagePath: 'images/food1.jpeg',
    ));

    fastFoodAdded.add(new FastFoodCard(
      foodName: "Chinese Food",
      imagePath: 'images/food2.jpg',
    ));

    fastFoodAdded.add(new FastFoodCard(
      foodName: "South Indian",
      imagePath: 'images/fast3.png',
    ));

    fastFoodAdded.add(new FastFoodCard(
      foodName: "North Indian",
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
            children: <Widget>[
              new ClipPath(
                clipper: new CustomClipperHead(),
                child: new Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250.0,
                  decoration: new BoxDecoration(
                    color: new Color(0xffff5252)
                  ),

                  child: new ListView(
                    physics: new NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      new Container(
                        padding: EdgeInsets.only(left: 20.0,right: 20.0),
                        child: new Row(
                          children: <Widget>[
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: <Widget>[
                                new Text("Hello Atul",textDirection: TextDirection.ltr,style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    letterSpacing: 1.0,
                                    wordSpacing: 2.0,
                                    fontWeight: FontWeight.bold
                                ),),

                                new Text("Bhopal , India",textDirection: TextDirection.ltr,style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w300
                                ),),


                              ],
                            ),

                            Padding(
                              padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/3),
                              child: new CircleAvatar(
                                backgroundImage: new ExactAssetImage('images/atul.jpeg'),
                                radius: 30.0,
                              ),
                            )

                          ],
                        ),
                      ),

                      //second child

                      new SearchBox(),
                    ],
                  ),
                ),
              ),

              //starting

              new Container(
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: GestureDetector(
                        child: new Text("Top Restaurant",textDirection: TextDirection.ltr,style: new TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600
                        ),),
                        onTap: openRestaurant,
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
                height: 154.0,
                child: new ListView.builder(itemBuilder: (_,index) => cardAdded[index],
                itemCount: cardAdded.length,
                scrollDirection: Axis.horizontal,),
              ),

              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: new Text("Choice Food",textDirection: TextDirection.ltr,style: new TextStyle(
                            color: Colors.black,
                            fontSize: 17.0,
                            fontWeight: FontWeight.w600
                        ),),
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
              ),

              Container(
                height: 154.0,
                child: new ListView.builder(itemBuilder: (_,index) => fastFoodAdded[index],
                  itemCount: fastFoodAdded.length,
                  scrollDirection: Axis.horizontal,),
              ),

            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.home,color: new Color(0xffff5252),),title: new Text("")),
    new BottomNavigationBarItem(icon: new Icon(Icons.cake,color: Colors.grey,),title: new Text("")),
        new BottomNavigationBarItem(icon: new Icon(Icons.color_lens,color: Colors.grey,),title: new Text("")),
        new BottomNavigationBarItem(icon: new Icon(Icons.accessibility,color: Colors.grey,),title: new Text(""))
      ]),
    );
  }



  void openRestaurant(){
    setState(() {

      Navigator.push(context, new MaterialPageRoute(builder: (context) => new HotelDetails()
      ),);
    });
  }
}
