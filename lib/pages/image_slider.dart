import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlide extends StatefulWidget {
  @override
  _ImageSlideState createState() => _ImageSlideState();
}

class _ImageSlideState extends State<ImageSlide> {
  // ignore: unused_field
  int _current = 0;
  List imgList = [
    'assets/car_white.png',
    'assets/car_black.png',
    'assets/car_white.png'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: CarouselSlider(
        height: 150,
        initialPage: 0,
        onPageChanged: (index) {
          setState(() {
            _current = index;
          });
        },
        items: imgList.map((imgUrl) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(color: Colors.indigo[300]),
                child: Image.asset(
                  imgUrl,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
      ),
    ));
  }
}
