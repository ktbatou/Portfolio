import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class WhoamI extends StatefulWidget {
  @override
  _WhoamIState createState() => _WhoamIState();
}

class _WhoamIState extends State<WhoamI> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 900;

    return Center(
        child: Flex(
            direction: isScreenWide ? Axis.horizontal : Axis.vertical,
            children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(left: 60, top: isScreenWide ? 50 : 70),
              width: 700,
              height: 600,
              child: Stack(
                children: [
                  Positioned(
                    child: DelayedDisplay(
                        slidingBeginOffset: Offset(
                          -0.30,
                          0,
                        ),
                        slidingCurve: Curves.linear,
                        delay: Duration(seconds: 2),
                        child: Container(
                          height: 437,
                          width: 437,
                          decoration: BoxDecoration(
                            color: Color(0xff9AC2C9),
                            shape: BoxShape.circle,
                          ),
                        )),
                  ),
                  Positioned(
                    right: 250,
                    top: 120,
                    child: DelayedDisplay(
                        slidingBeginOffset: Offset(
                          -0.30,
                          0,
                        ),
                        slidingCurve: Curves.linear,
                        delay: Duration(seconds: 2),
                        child: Container(
                          height: 385,
                          width: 385,
                          decoration: BoxDecoration(
                            color: Color(0xffE5C1BD),
                            shape: BoxShape.circle,
                          ),
                        )),
                  ),
                  Positioned(
                    left: 95,
                    top: 90,
                    child: DelayedDisplay(
                      slidingBeginOffset: Offset(
                        -0.30,
                        0,
                      ),
                      slidingCurve: Curves.linear,
                      delay: Duration(seconds: 2),
                      child: Container(
                          width: 385.0,
                          height: 385.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage('images/me.jpeg')))),
                    ),
                  ),
                  Positioned(
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
                          )))
                ],
              ),
            ),
          ),
          Flexible(
            child: Container(
              padding: isScreenWide
                  ? EdgeInsets.only(top: 150, right: 70)
                  : EdgeInsets.only(bottom: 130),
              child: Align(
                alignment: Alignment.center,
                child: Column(children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: DelayedDisplay(
                        delay: Duration(seconds: 1),
                        child: Text(
                          "Who am i ?",
                          style: TextStyle(
                              fontSize: 50,
                              color: Color(0xffD4738C),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: 400,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          child: DelayedDisplay(
                            delay: Duration(seconds: 1),
                            child: Text(
                              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff606078),
                                //fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ))
                ]),
              ),
            ),
          ),
        ]));
  }
}
