import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class CustomCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Carousel(
      showIndicator: false,
      autoplay: true,
      images: [
        Image.asset('assets/12.png'),
        Image.asset('assets/11.png'),
        Image.asset('assets/13.png'),
      ],
    );
  }
}
