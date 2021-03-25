import 'package:car_app/pages/home.dart';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:dio/dio.dart';
// ignore: unused_import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
