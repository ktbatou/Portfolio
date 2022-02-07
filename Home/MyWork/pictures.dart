import 'package:flutter/material.dart';

class pics extends StatefulWidget {
  @override
  _picsState createState() => _picsState();
}

class _picsState extends State<pics> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    bool smallScreen = MediaQuery.of(context).size.width < 850;
    double contextHeight = 907;
    double contextWidth = 1920;
    return Container(
        margin: EdgeInsets.only(
            bottom: smallScreen ? 30 : 100, left: isScreenWide ? 20 : 0),
        width: isScreenWide ? contextWidth * 0.083 : contextWidth * 0.07,
        height: isScreenWide ? 320 : 260,
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(
              15,
            ),
            border: Border.all(
              color: Color(0xff606078),
            ),
            image: new DecorationImage(
                fit: BoxFit.fill, image: AssetImage('images/home.png'))));
  }
}
