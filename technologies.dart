import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/themeProvider.dart';
import 'package:provider/provider.dart';

class tech extends StatefulWidget {
  @override
  _techState createState() => _techState();
}

class _techState extends State<tech> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    bool ScreenSmall = MediaQuery.of(context).size.width < 620;
    bool smallScreen = MediaQuery.of(context).size.width < 850;
    var theme = Provider.of<ThemeChanger>(context, listen: true).getTheme;

    double contextHeight = 907; //MediaQuery.of(context).size.height;
    double contextWidth = 1920; //MediaQuery.of(context).size.width;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= 850)
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
              itemCount: 4,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width:
                      isScreenWide ? contextWidth * 0.15 : contextWidth * 0.10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          child: Text(
                        "test",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: theme.headerTheme,
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
                              color: theme.textTheme),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ));
      else if (constraints.maxWidth < 850 && constraints.maxWidth > 640)
        return Container(
            child: Container(
          // height: contextWidth * 0.50,
          padding: EdgeInsets.only(top: contextHeight * 0.04),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          width: contextWidth * 0.15,
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
                        ),
                        Container(
                          width: contextWidth * 0.12,
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
                        ),
                      ]),
                ),
                Container(
                    padding: EdgeInsets.only(
                      top: 50,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            right: 30,
                          ),
                          width: contextWidth * 0.15,
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
                        ),
                        Container(
                          width: contextWidth * 0.12,
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
                        ),
                      ],
                    ))
              ]),
        ));
      return Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            width: contextWidth * 0.12,
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
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            width: contextWidth * 0.12,
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
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            width: contextWidth * 0.12,
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
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            width: contextWidth * 0.12,
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
          ),
        ],
      ));
    });
  }
}
