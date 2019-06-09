import 'package:flutter/material.dart';

class CustomClipperHead extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path=new Path();
    path.lineTo(0.0, size.height-20);
    //here we start make we curve
    var firstControlPoint=new Offset(size.width/4, size.height);
    var firstEndPoint =new Offset(size.width/2.25, size.height-30);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var SecondControlPoint=new Offset(size.width-(size.width/3.25), size.height-65);
    var SecondEndPoint =new Offset(size.width, size.height-40);
    path.quadraticBezierTo(SecondControlPoint.dx, SecondControlPoint.dy, SecondEndPoint.dx, SecondEndPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}