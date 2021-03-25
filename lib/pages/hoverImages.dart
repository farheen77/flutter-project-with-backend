import 'package:flutter/material.dart';

String image1 = "assets/car.jpeg";
String image2 = "assets/bmw 8.jpeg";
String image3 = "assets/bmw x.jpeg";
String image4 = "assets/bmw1.jpeg";
String image5 = "assets/car.jpeg";

// ignore: must_be_immutable
class ImagesModel extends StatefulWidget {
  @override
  _ImagesModelState createState() => _ImagesModelState();
}

class _ImagesModelState extends State<ImagesModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HoverImage(),
            ],
          ),
        ),
      ),
    );
  }
}

class HoverImage extends StatefulWidget {
  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black,
              offset: Offset(0.0, 20.0),
              spreadRadius: -10.0,
              blurRadius: 30.0),
        ]),
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          clipBehavior: Clip.hardEdge,
          child: Image.asset(
            image1,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
