import 'dart:math';

import 'package:flutter/material.dart';

class CarLogos extends StatefulWidget {
  @override
  _CarLogosState createState() => _CarLogosState();
}

List<String> carLogos = [
  "assets/mercedes.jpeg",
  "assets/b.jpeg",
  "assets/honda.jpeg",
  "assets/audi.jpeg",
  "assets/Volks.jpeg",
   "assets/mercedes.jpeg",
  "assets/b.jpeg",
  "assets/honda.jpeg",
  "assets/audi.jpeg",
  "assets/Volks.jpeg",
];

class _CarLogosState extends State<CarLogos> {
  PageController pageController;
  double pageScrollValue = 4.0;
  int activePage = 4;
  final bgColor = const Color(0XFFF4F4FF);
  AnimationController animationController;
  Animation animation;

  @override
  // ignore: must_call_super
  void initState() {
    pageController = PageController(
      initialPage: 4,
      viewportFraction: .55,
    )..addListener(() {
        setState(() {
          activePage = pageController.page.round();
          pageScrollValue = pageController.page;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Flexible(
                child: PageView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              controller: pageController,
              itemBuilder: (BuildContext context, int index) {
                return Align(
                  alignment: Alignment.center,
                  child: Stack(alignment: Alignment.topRight, children: [
                    AnimatedContainer(
                        padding: EdgeInsets.all(30.0),
                        duration: Duration(milliseconds: 300),
                        height: activePage == index ? 180 : 120,
                        width: activePage == index ? 180 : 120,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Transform.scale(
                            scale: max(
                              .5,
                              1.0 - (pageScrollValue - index).abs(),
                            ),
                            child: Image.asset(carLogos[index]))),
                    Positioned(
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 200),
                        child: index.toDouble() == pageScrollValue
                            ? Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.indigo[300],
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              )
                            : SizedBox.shrink(),
                      ),
                    ),
                  ]),
                );
              },
              itemCount: carLogos.length,
            )),
          ),
        ],
      ),
    );
  }
}
