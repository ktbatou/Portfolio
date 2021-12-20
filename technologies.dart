import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tech extends StatefulWidget {
  @override
  _techState createState() => _techState();
}

class _techState extends State<tech> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    bool ScreenSmall = MediaQuery.of(context).size.width < 620;

    double contextHeight = 907; //MediaQuery.of(context).size.height;
    double contextWidth = 1920; //MediaQuery.of(context).size.width;
    return Center(
        child: Container(
      height: isScreenWide ? contextWidth * 0.15 : contextWidth * 0.10,
      padding: EdgeInsets.only(top: contextHeight * 0.04),
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 20,
            );
          },
          itemCount: 3,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          controller: ScrollController(),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: isScreenWide ? contextWidth * 0.15 : contextWidth * 0.10,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffE9BFAF),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Color(0xffF3D6CE),
                  border: Border.all(
                    color: Color(0xff856654),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      child: Text(
                    "test",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Color(0xffC84E6D),
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                  Container(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      "just a random text to describe each technology, blablablabla kjsdlhzgdpzoi",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: isScreenWide ? 16 : 14,
                          color: Color(0xff3B3B58)),
                    ),
                  ),
                ],
              ),
            );
          }),
    ));
  }
}
