import 'package:car_app/pages/car_list.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'car_info.dart';
import 'getdetailsmodel.dart';

class Apidetails extends StatefulWidget {
  @override
  _ApidetailsState createState() => _ApidetailsState();
}

var imgList = [
  'assets/white.png',
  'assets/grey.png',
  'assets/black.png',
  'assets/blue.png',
  'assets/red.png',
  'assets/blackkk.png',
  'assets/classic.jpeg',
  'assets/white.png',
  'assets/grey.png',
  'assets/black.png',
  'assets/blue.png',
];

class _ApidetailsState extends State<Apidetails> {
  List<ViewDetails> viewcars = [];
  bool _isLoading = true;

  Future<List<ViewDetails>> viewallcars() async {
    Dio dio = Dio();
    _isLoading = true;
    final response = await dio.get('http://192.168.1.181:8006/api/b_m_w_cars');
    _isLoading = false;
    print(response.statusCode);
    if (response.statusCode == 200) {
      List cars = response.data['response'];
      cars.forEach((element) {
        viewcars.add(ViewDetails.fromJson(element));
      });

      print(response.data['response']);
      setState(() {
        _isLoading = false;
      });
    } else {
      _isLoading = false;
      throw Exception('Error');
    }
  }

  @override
  void initState() {
    viewallcars();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _isLoading
            ? Center(child: CupertinoActivityIndicator())
            : Center(
                child: ListView.builder(
                    itemCount: viewcars.length,
                    itemBuilder: (context, index) => Container(
                          padding: EdgeInsets.only(top: 50),
                          child: GestureDetector(
                            // adding Gesture to view the Car_info
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration: Duration(seconds: 1),
                                    transitionsBuilder: (context, animation,
                                        animationTime, child) {
                                      animation = CurvedAnimation(
                                          parent: animation,
                                          curve: Curves.easeInBack);
                                      return ScaleTransition(
                                          scale: animation,
                                          alignment: Alignment.bottomCenter,
                                          child: child);
                                    },
                                    pageBuilder:
                                        (context, animation, animationTime) {
                                      return CarInfo(); // Need to add APi here
                                    },
                                  ));
                            },
                            child: Container(
                              height: 100,
                              child: Card(
                                semanticContainer: true,
                                child: ListTile(
                                  title: Text(
                                    viewcars[index].seriesName,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      viewcars[index].Color,
                                      style: TextStyle(fontSize: 11),
                                    ),
                                  ),
                                  leading: Image.asset(
                                    imgList[index],
                                  ),
                                  trailing: Text(
                                    viewcars[index].price.toString(),
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  tileColor: Colors.white,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                            ),
                          ),
                        ))));
  }
}
