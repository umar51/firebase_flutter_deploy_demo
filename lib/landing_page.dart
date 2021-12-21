import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            height: 400.h,
            autoPlay: false,
          ),
          items: [
            Image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/04/04/23/26/robot-707219_960_720.jpg'),
            ),
            Image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2016/08/23/18/50/spider-1615195_960_720.png'),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        TextButton(
            onPressed: () {
              controller.nextPage();
            },
            child: Icon(
              Icons.arrow_right,
              size: 30.sp,
            ))
      ],
    ));
  }
}
