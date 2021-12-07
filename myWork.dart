import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/woekPage2.dart';

import 'WorkPage1.dart';

class MyWork extends StatefulWidget {
  @override
  _MyWorkState createState() => _MyWorkState();
}

class _MyWorkState extends State<MyWork> {
  List<Widget> widList = [
    Work1(),
    Work2(),
  ];
  @override
  Widget build(BuildContext context) {
    return Swiper(
      pagination: SwiperPagination(
          builder: DotSwiperPaginationBuilder(
              activeColor: Color(0xffC84E6D), activeSize: 12)),
      itemBuilder: (BuildContext, int index) {
        return widList[index];
      },
      itemCount: widList.length,
      controller: SwiperController(),
    );
  }
}
