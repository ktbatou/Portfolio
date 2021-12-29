import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Home/MyWork/WorkPictures.dart';
import 'package:portfolio/Home/my_flutter_app_icons.dart';
import 'package:portfolio/colors%20&%20theme/themeProvider.dart';
import 'package:portfolio/Home/MyWork/workDescription.dart';
import 'package:provider/provider.dart';
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
    var theme = Provider.of<ThemeChanger>(context, listen: true).getTheme;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: theme.sliderTheme,
          border: Border.all(color: theme.bordertheme)),
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
