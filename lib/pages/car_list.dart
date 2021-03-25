import 'package:car_app/pages/car_info.dart';
import 'package:car_app/pages/drawer.dart';
import 'package:car_app/pages/home.dart';
import 'package:flutter/material.dart';

import 'Apidetails.dart';

class CarsList extends StatefulWidget {
  @override
  _CarsListState createState() => _CarsListState();
}

class _CarsListState extends State<CarsList> {
  var imgList = [
    'assets/white.png',
    'assets/grey.png',
    'assets/black.png',
    'assets/blue.png',
    'assets/white.png',
    'assets/green.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //         context,
                    //         PageRouteBuilder(
                    //           transitionDuration: Duration(seconds: 1),
                    //           transitionsBuilder:
                    //               (context, animation, animationTime, child) {
                    //             animation = CurvedAnimation(
                    //                 parent: animation,
                    //                 curve: Curves.easeInQuint);
                    //             return ScaleTransition(
                    //                 scale: animation,
                    //                 alignment: Alignment.topCenter,
                    //                 child: child);
                    //           },
                    //           pageBuilder: (context, animation, animationTime) {
                    //             return Home();
                    //           },
                    //         ));
                    //   },
                    // child:
                    Container(
                      height: 45,
                      width: 55,
                      //   decoration: BoxDecoration(
                      //     shape: BoxShape.circle,
                      //     border: Border.all(
                      //       color: Colors.grey[300],
                      //     ),
                      //   ),
                      //   child: Drawer(),
                      //   // child: Icon(Icons.menu),
                    ),

                    Spacer(),
                    Text(
                      'Jimmy',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      radius: 12.0,
                      backgroundImage: AssetImage('assets/icon.jpeg'),
                      backgroundColor: Colors.grey[600],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose your\nawesome car!',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                          height: 1.3),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 900,
                  child: Apidetails(), // Calling api here
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
