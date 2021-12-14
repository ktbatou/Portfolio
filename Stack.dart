import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class stackWidget extends StatefulWidget {
  @override
  _stackWidgetState createState() => _stackWidgetState();
}

class _stackWidgetState extends State<stackWidget> {
  @override
  Widget build(BuildContext context) {
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;
    return Align(
      //   alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.only(
          left: 0,
        ), //top: isScreenWide ? 50 : 90),
        width: contextWidth * 0.5,
        height: contextHeight * 0.8,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: DelayedDisplay(
                  slidingBeginOffset: Offset(
                    -0.30,
                    0,
                  ),
                  slidingCurve: Curves.linear,
                  delay: Duration(seconds: 2),
                  child: Container(
                    height: contextWidth * 0.35,
                    width: contextWidth * 0.35,
                    decoration: BoxDecoration(
                      color: Color(0xff9AC2C9),
                      shape: BoxShape.circle,
                    ),
                  )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: DelayedDisplay(
                  slidingBeginOffset: Offset(
                    -0.30,
                    0,
                  ),
                  slidingCurve: Curves.linear,
                  delay: Duration(seconds: 2),
                  child: Container(
                    height: contextWidth * 0.3,
                    width: contextWidth * 0.3,
                    decoration: BoxDecoration(
                      color: Color(0xffE5C1BD),
                      shape: BoxShape.circle,
                    ),
                  )),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: DelayedDisplay(
                slidingBeginOffset: Offset(
                  -0.30,
                  0,
                ),
                slidingCurve: Curves.linear,
                delay: Duration(seconds: 2),
                child: Container(
                    height: contextWidth * 0.32,
                    width: contextWidth * 0.32,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('images/me.jpeg')))),
              ),
            ),
            /*Positioned(
              left: 200,
              top: 20,
              child: DelayedDisplay(
                  delay: Duration(seconds: 3),
                  child: Text(
                    'Kaoutar',
                    style: TextStyle(
                        fontSize: 60,
                        color: Color(0xff606078),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  )),
            ),
            Positioned(
                left: 300,
                top: 100,
                child: DelayedDisplay(
                    delay: Duration(seconds: 4),
                    child: Text(
                      'Tbatou',
                      style: TextStyle(
                          fontSize: 60,
                          color: Color(0xff606078),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                    ))
                    )*/
          ],
        ),
      ),
    );
  }
}
