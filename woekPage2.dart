import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'my_flutter_app_icons.dart';

class Work2 extends StatefulWidget {
  @override
  _Work2State createState() => _Work2State();
}

class _Work2State extends State<Work2> {
  @override
  Widget build(BuildContext context) {
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          // color: Color(0xffD9BFC4),
          border: Border.all(color: Color(0xffA36672))),
      width: contextWidth * 0.8,
      height: contextHeight * 0.4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 50,
          ),
          Container(
            padding: EdgeInsets.only(top: 200),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                                          padding: EdgeInsets.only(
                                              top: 16, right: 10),
                                          child: Icon(
                                              MyFlutterApp.github_circled))),
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
          Align(
            alignment: Alignment.center,
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
                          border: Border.all(
                            color: Color(0xff606078), // red as border color
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
                          border: Border.all(
                            color: Color(0xff606078), // red as border color
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
                          border: Border.all(
                            color: Color(0xff606078), // red as border color
                          ),
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/stepper.png'))))),
            ]),
          ),
        ],
      ),
    );
  }
}
