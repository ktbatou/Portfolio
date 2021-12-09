import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/my_flutter_app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class Work1 extends StatefulWidget {
  @override
  _Work1State createState() => _Work1State();
}

class _Work1State extends State<Work1> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 800;

    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Color(0xffC7D7D9),
      width: contextWidth,
      height: contextHeight,
      child: Flex(
        direction: isScreenWide ? Axis.horizontal : Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(top: isScreenWide ? 0 : 70),
            child: Row(children: [
              DelayedDisplay(
                  fadingDuration: Duration(milliseconds: 600),
                  delay: Duration(milliseconds: 800),
                  slidingBeginOffset: Offset(0, 3),
                  child: Container(
                      margin: EdgeInsets.only(bottom: 100, left: 20),
                      width: 200,
                      height: 400,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15,
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
                        left: 20,
                      ),
                      width: 200,
                      height: 400,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/menu.png'))))),
              DelayedDisplay(
                  fadingDuration: Duration(milliseconds: 600),
                  delay: Duration(milliseconds: 920),
                  slidingBeginOffset: Offset(0, 3),
                  child: Container(
                      margin: EdgeInsets.only(top: 100, left: 20),
                      width: 200,
                      height: 400,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/stepper.png'))))),
            ]),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: isScreenWide ? 150 : 0),
              child: Align(
                alignment: Alignment.center,
                child: Column(children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: DelayedDisplay(
                        delay: Duration(milliseconds: 300),
                        child: Text(
                          "Tracker",
                          style: TextStyle(
                              fontSize: 50,
                              color: Color(0xffC84E6D),
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
                      child: DelayedDisplay(
                        delay: Duration(milliseconds: 300),
                        child: Text(
                          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff606078),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: DelayedDisplay(
                          delay: Duration(seconds: 2),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        padding:
                                            EdgeInsets.only(top: 16, right: 10),
                                        child:
                                            Icon(MyFlutterApp.github_circled))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      padding: EdgeInsets.only(top: 20),
                                      child: InkWell(
                                        onTap: () => launch(
                                            'https://github.com/ktbatou'),
                                        child: Text(
                                          "Github",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xffC84E6D),
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                      ),
                                    ))
                              ])))
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
