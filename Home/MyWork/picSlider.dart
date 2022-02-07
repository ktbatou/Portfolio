import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Home/MyWork/pictures.dart';
import 'package:portfolio/colors%20&%20theme/themeProvider.dart';
import 'package:provider/provider.dart';

class SlideWorkPic extends StatefulWidget {
  @override
  _SlideWorkPicState createState() => _SlideWorkPicState();
}

class _SlideWorkPicState extends State<SlideWorkPic> {
  List<Widget> picList = [
    pics(),
    pics(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<ThemeChanger>(context, listen: true).getTheme;
    CarouselController buttonCarouselController = CarouselController();
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    bool smallScreen = MediaQuery.of(context).size.width < 850;
    double contextHeight = 907;
    double contextWidth = 1920;
    return Container(
      //  width: isScreenWide ? contextWidth * 0.083 : contextWidth * 0.1,
      //height: isScreenWide ? 320 : 360,
      child: CarouselSlider(
        items: picList,
        carouselController: buttonCarouselController,
        options: CarouselOptions(
          autoPlay: true,
          //  enlargeCenterPage: true,
          viewportFraction: 2,
          aspectRatio: 0.9,
          initialPage: 2,
        ),
      ),
    );
  }
}
