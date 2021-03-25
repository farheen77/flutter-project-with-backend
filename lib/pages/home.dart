import 'package:car_app/pages/carLogos.dart';
import 'package:car_app/pages/model.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
            padding: EdgeInsets.symmetric(
              vertical: 24.0,
            ),
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Carsio",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0,
                      color: Colors.indigo[300],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 50.0,
                      ),
                      width: double.infinity,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "CHOOSE",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                                color: Colors.black,
                              ),
                            ),
                            Container(
                                width: double.infinity,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "FAVORITE",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 35.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "BRANDS",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 35.0,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10.0),
                                              width: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Got Your Best Deal",
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 110,
                                                  ),
                                                  AnimatedContainer(
                                                    duration: Duration(
                                                        microseconds: 200),
                                                    child: Container(
                                                        height: 150,
                                                        child: CarLogos()),
                                                  ),
                                                  SizedBox(
                                                    height: 110,
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10.0),
                                                    width: double.infinity,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "Swipe right or left to see more",
                                                          style: TextStyle(
                                                            fontSize: 12.0,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ])),
                            Container(
                                decoration: BoxDecoration(
                                    color: Colors.indigo[300],
                                    borderRadius: BorderRadius.circular(18.0)),
                                child:
                                    // ignore: deprecated_member_use
                                    FlatButton(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 23, horizontal: 85),
                                  onPressed: () {
                                    showModalBottomSheet(
                                      isScrollControlled: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40.0),
                                        topRight: Radius.circular(40.0),
                                      )),
                                      backgroundColor: Colors.white,
                                      context: context,
                                      builder: (_) {
                                        return CarModel();
                                      },
                                    );
                                  },
                                  child: Text(
                                    "Continue",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ))
                          ]))
                ]))
      ],
    ));
  }
}
