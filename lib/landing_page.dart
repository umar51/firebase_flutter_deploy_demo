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
                  'https://cdn.pixabay.com/photo/2017/11/28/18/52/bee-2984342_960_720.jpg'),
            ),
            Image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/05/10/19/29/robot-2301646_960_720.jpg'),
            ),
            Image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/09/11/19/05/robot-2740075_960_720.jpg'),
            ),
            Image(
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2021/09/25/05/25/robot-6654029_960_720.png'),
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
