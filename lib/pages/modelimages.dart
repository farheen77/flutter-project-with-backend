import 'package:flutter/material.dart';

class ModelImage extends StatefulWidget {
  @override
  _ModelImageState createState() => _ModelImageState();
}

class _ModelImageState extends State<ModelImage> {
  bool isTapped = false;
  var titleList = [
    "BMW 3 Series",
    "BMW 8 Series",
    "BMW X Series",
    "BMW 3 Series",
    "BMW M Series"
  ];
  var descList = [
    "11 Cars",
    "9 Cars",
    "12 Cars",
    "6 Cars",
    "10 Cars",
  ];
  var imgList = [
    "assets/car.jpeg",
    "assets/bmw 8.jpeg",
    "assets/bmw x.jpeg",
    "assets/bmw1.jpeg",
    "assets/car.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 170,
        margin: EdgeInsets.symmetric(vertical: 50),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imgList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  showDialogFunc(context, imgList[index]);
                },
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset(imgList[index]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              titleList[index],
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 30),
                              width: 100,
                              child: Text(
                                descList[index],
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

showDialogFunc(context, img) {
  return showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width * 0.7,
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      img,
                      width: 200,
                      height: 200,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
