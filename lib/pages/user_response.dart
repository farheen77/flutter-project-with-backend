// import 'package:car_app/dioservices.dart';
// import 'package:car_app/pages/user.dart';
// import 'package:dio/dio.dart';

// import 'package:flutter/material.dart';

// class UserScreen extends StatefulWidget {
//   @override
//   _UserScreenState createState() => _UserScreenState();
// }

// class _UserScreenState extends State<UserScreen> {
//   HttpServices http;
//   UserResponse userResponse;
//   User user;

//   bool isLoading = false;
//   Future getUser() async {
//     Response response;
//     try {
//       isLoading = true;
//       response = await http.getRequest('http://127.0.0.1:8006/api/car_models');
//       isLoading = false;

//       if (response.statusCode == 200) {
//         setState(() {
//           userResponse = UserResponse.fromJson(response.data);
//           user = userResponse.user;
//         });
//       } else {
//         print("Error");
//       }
//     } on Exception catch (e) {
//       isLoading = false;
//       print(e);
//     }
//   }

//   @override
//   void initState() {
//     http = HttpServices();
//     getUser();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: isLoading
//           ? Center(child: CircularProgressIndicator())
//           : userResponse != null
//               ? Container(
//                   padding: EdgeInsets.only(left: 150),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                           'Name: ${userResponse.id}\nSeries: ${userResponse.series}\nnumber: ${userResponse.number}')
//                     ],
//                   ))
//               : Center(child: Text("Error")),
//     );
//   }
// }
