import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/WorkPictures.dart';
import 'package:portfolio/my_flutter_app_icons.dart';
import 'package:portfolio/workDescription.dart';
import 'package:url_launcher/url_launcher.dart';

class Work1 extends StatefulWidget {
  @override
  _Work1State createState() => _Work1State();
}

class _Work1State extends State<Work1> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    bool smallScreen = MediaQuery.of(context).size.width < 850;
    double contextHeight = 907;
    double contextWidth = 1920;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: Color(0xffe5d2c4),
          border: Border.all(color: Color(0xffA36672))),
      width: isScreenWide
          ? contextWidth * 0.6
          : smallScreen
              ? contextWidth * 0.5
              : contextWidth * 0.4,
      height: isScreenWide
          ? contextHeight * 0.4
          : smallScreen
              ? contextHeight * 0.30
              : contextHeight * 0.35,
      child: Flex(
        direction: smallScreen ? Axis.vertical : Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment:
            smallScreen ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [workPictures(), description()],
      ),
    );
  }
}
