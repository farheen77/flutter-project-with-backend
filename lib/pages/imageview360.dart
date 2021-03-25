import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';

class ImageView extends StatefulWidget {
  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  // ignore: deprecated_member_use
  List<AssetImage> imageList = List<AssetImage>();
  bool autoRotate = true;
  int rotationCount = 2;
  int swipeSentisivity = 2;
  bool allowSwipeToRotate = true;
  RotationDirection rotationDirection = RotationDirection.anticlockwise;
  bool imagePrecached = false;

  @override
  void initState() {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => updateImageList(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF4F4FF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          (imagePrecached == true)
              ? ImageView360(
                  key: UniqueKey(),
                  autoRotate: true,
                  imageList: imageList,
                  rotationDirection: RotationDirection.anticlockwise,
                  frameChangeDuration: Duration(milliseconds: 70),
                  swipeSensitivity: 2,
                  rotationCount: 50,
                  allowSwipeToRotate: true,
                )
              : Text('Image360')
        ],
      ),
    );
  }

  void updateImageList(BuildContext context) async {
    for (int i = 1; i <= 25; i++) {
      imageList.add(AssetImage('assets/$i.png'));
// To precache images so that when required they are loaded faster.
      await precacheImage(AssetImage('assets/$i.png'), context);
    }
    setState(() {
      imagePrecached = true;
    });
  }
}
