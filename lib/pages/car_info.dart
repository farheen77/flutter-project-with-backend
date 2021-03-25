// ignore: unused_import
import 'package:car_app/constant.dart';
import 'package:car_app/main.dart';

// ignore: unused_import
import 'package:car_app/pages/carLogos.dart';
import 'package:car_app/pages/car_list.dart';
// ignore: unused_import
import 'package:car_app/pages/home.dart';
// ignore: unused_import
import 'package:car_app/pages/image_slider.dart';
import 'package:car_app/pages/imageview360.dart';
// ignore: unused_import
import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:imageview360/imageview360.dart';
import 'package:favorite_button/favorite_button.dart';

class CarInfo extends StatefulWidget {
  @override
  _CarInfoState createState() => _CarInfoState();
}

List<Map> colors = [
  {
    'name': "transparent",
    'color': Colors.grey[300],
    'assets': " assests/car_white.png",
  },
  {
    'name': "black",
    'color': Colors.black,
    'assets': " assests/car_black.png",
  },
  {
    'name': "white",
    'color': Colors.grey[300],
    'assets': " assests/car_black",
  },
  {
    'name': "blue",
    'color': Colors.blue[900],
    'assets': " assests/car_green",
  },
  {
    'name': "red",
    'color': Colors.redAccent[700],
    'assets': " assests/car_grey",
  },
  {
    'name': "grey",
    'color': Colors.grey,
    'assets': " assests/car_black",
  },
];

class _CarInfoState extends State<CarInfo> {
  final bgColor = const Color(0XFFF4F4FF);

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: ListView(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(seconds: 1),
                              transitionsBuilder:
                                  (context, animation, animationTime, child) {
                                animation = CurvedAnimation(
                                    parent: animation,
                                    curve: Curves.fastLinearToSlowEaseIn);
                                return ScaleTransition(
                                    scale: animation,
                                    alignment: Alignment.center,
                                    child: child);
                              },
                              pageBuilder: (context, animation, animationTime) {
                                return CarsList();
                              },
                            ));
                      },
                      child: Container(
                          height: 45,
                          width: 55,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey[300],
                            ),
                          ),
                          child: Icon(Icons.chevron_left_sharp)),
                    ),
                    Spacer(),
                    Container(
                      height: 45,
                      width: 55,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey[300],
                        ),
                      ),
                      child: PopupMenuButton<String>(
                        color: bgColor,
                        onSelected: choiceAction,
                        itemBuilder: (BuildContext context) {
                          return Constants.choices.map((String choice) {
                            return PopupMenuItem<String>(
                              value: choice,
                              child: Text(choice),
                            );
                          }).toList();
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BMW 8 Series Coupe',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          height: 1.3),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Start from \$202,405',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[400],
                          height: 1.3),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                AnimatedContainer(
                  duration: Duration(microseconds: 200),
                  child: Center(
                    child: Container(
                        color: bgColor,
                        height: 200,
                        width: 200,
                        child: ImageView()), // Image View 360
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 40, left: 30),
            height: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    _getTabItem('Inspire', true),
                    SizedBox(
                      width: 20,
                    ),
                    _getTabItem('Inform', false),
                    SizedBox(
                      width: 20,
                    ),
                    _getTabItem('Technical Data', false),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'Impressive down to the last thread. While outstanding paint finishes bring out the apperance of the BMW 8 Series Coupe.',
                    style: TextStyle(
                        fontSize: 14.0, color: Colors.grey, height: 1.3),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, right: 50),
                  child: Text(
                    '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                    style: TextStyle(fontSize: 13.0, color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: colors.map((color) {
                    int index = colors.indexOf(color);
                    return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: Container(
                          height: 35,
                          width: 35,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: color["color"],
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2.0,
                                  color: index == selectedIndex
                                      ? Colors.grey
                                      : Colors.white)),
                        ));
                  }).toList(),
                ),
                SizedBox(height: 36),
                Row(
                  children: [
                    Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[300]),
                            borderRadius: BorderRadius.circular(27.0)),
                        child: FavoriteButton(
                          valueChanged: (_isFavorite) {
                            print('Is Favorite $_isFavorite)');
                          },
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.indigo[300],
                            borderRadius: BorderRadius.circular(24.0)),
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 25, horizontal: 85),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          child: Text(
                            "Check Out",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        )),
                  ],
                )
              ],
            ),
          ),
        ]));
  }
}

Widget _getTabItem(String text, bool isActive) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(text,
          style: TextStyle(
              color: isActive ? Colors.black : Colors.grey,
              fontSize: isActive ? 15.0 : 13.0,
              fontWeight: FontWeight.bold)),
      isActive
          ? Container(
              margin: EdgeInsets.only(top: 10),
              height: 3.4,
              width: 23.0,
              decoration: BoxDecoration(
                  color: isActive ? Colors.indigo[300] : Colors.transparent,
                  borderRadius: BorderRadius.circular(10.0)),
            )
          : SizedBox.shrink()
    ],
  );
}

void choiceAction(String choice) {
  print('Working');
}
