import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class workPictures extends StatefulWidget {
  @override
  _workPicturesState createState() => _workPicturesState();
}

class _workPicturesState extends State<workPictures> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    bool smallScreen = MediaQuery.of(context).size.width < 850;

    double contextHeight = 907;
    double contextWidth = 1920;
    return Align(
      alignment: Alignment.center,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DelayedDisplay(
                fadingDuration: Duration(milliseconds: 600),
                delay: Duration(milliseconds: 800),
                slidingBeginOffset: Offset(0, 3),
                child: Container(
                    margin: EdgeInsets.only(
                        bottom: smallScreen ? 30 : 100,
                        left: isScreenWide ? 20 : 0),
                    width: isScreenWide
                        ? contextWidth * 0.083
                        : contextWidth * 0.063,
                    height: isScreenWide ? 320 : 250,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        border: Border.all(
                          color: Color(0xff606078),
                        ),
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/home.png'))))),
            DelayedDisplay(
                fadingDuration: Duration(milliseconds: 600),
                delay: Duration(milliseconds: 880),
                slidingBeginOffset: Offset(0, 3),
                child: Container(
                    margin: EdgeInsets.only(
                      left: isScreenWide ? 20 : 10,
                    ),
                    width: isScreenWide
                        ? contextWidth * 0.083
                        : contextWidth * 0.063,
                    height: isScreenWide ? 320 : 250,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                        border: Border.all(
                          color: Color(0xff606078),
                        ),
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/menu.png'))))),
            isScreenWide
                ? DelayedDisplay(
                    fadingDuration: Duration(milliseconds: 600),
                    delay: Duration(milliseconds: 920),
                    slidingBeginOffset: Offset(0, 3),
                    child: Container(
                        margin: EdgeInsets.only(
                            top: 100, left: isScreenWide ? 20 : 10),
                        width: isScreenWide
                            ? contextWidth * 0.083
                            : contextWidth * 0.063,
                        height: isScreenWide ? 320 : 250,
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                            border: Border.all(
                              color: Color(0xff606078), // red as border color
                            ),
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('images/stepper.png')))))
                : Container(
                    width: 0,
                  ),
          ]),
    );
  }
}
