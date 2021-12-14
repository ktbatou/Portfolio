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
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.only(top: contextHeight * 0.1),
        height: contextHeight * 0.7,
        width: contextWidth * 0.75,
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
        ));
  }
}
