import 'package:flutter/material.dart';

import 'package:opscroll_web/opscroll_web.dart';
import 'package:portfolio/appBarActions.dart';
import 'package:portfolio/myWork.dart';
import 'package:portfolio/whoAmI.dart';

import 'appBarActions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double test = 0.5;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: contextHeight * 0.06,
          actions: <Widget>[ActionBar(control: controller,)],
        ),
        body: OpscrollWeb(
          isFloatingButtonActive: true,
          isTouchScrollingActive: true,
          pageController: controller,
          scrollCurve: Curves.linearToEaseOut,
          scrollingAnimationOptions: ScrollingAnimationOptions.Default,
          scrollSpeed: const Duration(
            milliseconds: 300,
          ),
          onePageChildren: [
            WhoamI(),
            MyWork(),
            Container(
              child: Text("test"),
            )
          ],
        ));
  }
}
