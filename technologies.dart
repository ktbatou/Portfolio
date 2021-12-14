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
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;
    return Container(
      height: contextWidth * 0.2,
      padding: EdgeInsets.only(top: contextHeight * 0.1),
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 20,
            );
          },
          itemCount: 3,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: contextWidth * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Color(0xffD9BFC4),
                  border: Border.all(color: Color(0xffA36672))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      child: Text(
                    "test",
                    style: GoogleFonts.poppins(
                      fontSize: 40,
                      color: Color(0xffC84E6D),
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                  Container(
                    child: Text(
                      "khfGFLUIAGHFLFHMFUILFHILFMZF LQDUHAMIGFZdilgD LKQUGDyAFGDZLIG  DMILGDmigM  GDLIAGZ",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: Color(0xff3B3B58)),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
