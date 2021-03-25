import 'package:car_app/pages/car_list.dart';
import 'package:car_app/pages/modelimages.dart';

import 'package:flutter/material.dart';

import 'Api.dart';

class CarModel extends StatefulWidget {
  @override
  _CarModelState createState() => _CarModelState();
}

class _CarModelState extends State<CarModel> {
  var imgList = ["assets/car.jpeg", "assets/bmw 8.jpeg"];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(children: [
          Container(
            child: Image.asset(
              'assets/bmw.jpeg',
              width: 90.0,
              height: 90.0,
            ),
          ),
          Container(
            child: Text(
              'BMW',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 5.0),
          Container(
            child: Text(
              '8 Series',
              style: TextStyle(
                fontSize: 11.0,
                color: Colors.black45,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
            height: 260,
            child: Container(child: ApiState()),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.indigo[300],
                  borderRadius: BorderRadius.circular(20.0)),
              // ignore: deprecated_member_use
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 23, horizontal: 65),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(seconds: 1),
                        transitionsBuilder:
                            (context, animation, animationTime, child) {
                          animation = CurvedAnimation(
                              parent: animation, curve: Curves.easeInBack);
                          return ScaleTransition(
                              scale: animation,
                              alignment: Alignment.bottomCenter,
                              child: child);
                        },
                        pageBuilder: (context, animation, animationTime) {
                          return CarsList();
                        },
                      ));
                },
                child: Text(
                  "View All",
                  style: TextStyle(color: Colors.white),
                ),
              ))
        ]));
  }
}
