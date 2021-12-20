import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'WorkPage1.dart';

class MyWork extends StatefulWidget {
  @override
  _MyWorkState createState() => _MyWorkState();
}

class _MyWorkState extends State<MyWork> {
  List<Widget> widList = [
    Work1(),
    Work1(),
  ];
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    bool smallScreen = MediaQuery.of(context).size.width < 850;

    double contextHeight = 907; //MediaQuery.of(context).size.height;
    double contextWidth = 1920; //MediaQuery.of(context).size.width;
    return Center(
        child: Container(
            padding: EdgeInsets.only(top: contextHeight * 0.04),
            height: isScreenWide
                ? contextHeight * 0.65
                : smallScreen
                    ? contextHeight * 0.70
                    : contextHeight * 0.50,
            width: isScreenWide
                ? contextWidth * 0.6
                : smallScreen
                    ? contextWidth * 0.27
                    : contextWidth * 0.42,
            child: Swiper(
              viewportFraction: 0.8,
              scale: 0.9,
              pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                      activeColor: Color(0xffC84E6D),
                      activeSize: 12,
                      color: Colors.blueGrey)),
              itemBuilder: (BuildContext, int index) {
                return widList[index];
              },
              itemCount: widList.length,
              controller: SwiperController(),
              autoplayDisableOnInteraction: true,
            )));
  }
}
