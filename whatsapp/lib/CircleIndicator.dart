import 'package:flutter/material.dart';
class CircleIndicator extends StatefulWidget {
  @override
  _CircleIndicatorState createState() => _CircleIndicatorState();
}

class _CircleIndicatorState extends State<CircleIndicator> {
  @override
  Widget build(BuildContext context) {
    var takeHeight=MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top:100,left: 8.0,right: 8.0,bottom: 8.0),
      child: new Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Stack(
                children: <Widget>[
                  new Container(
                    height: 10.0,
                    width: 7.0,
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                  )
                ],

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Stack(
                children: <Widget>[
                  new Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: new BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                  )
                ],

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Stack(
                children: <Widget>[
                  new Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: new BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                  )
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
