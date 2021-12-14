import 'package:auto_size_text/auto_size_text.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Stack.dart';

class WhoamI extends StatefulWidget {
  @override
  _WhoamIState createState() => _WhoamIState();
}

class _WhoamIState extends State<WhoamI> {
  @override
  Widget build(BuildContext context) {
    //TODO: when sceen <= 1340 reduce the width of text container to 300 and no bottom padding
    bool isScreenWide = MediaQuery.of(context).size.width >= 900;
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 700)
        return Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400,
                padding: EdgeInsets.only(bottom: contextHeight * 0.3),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(bottom: 10),
                          child: Divider(
                            height: 16,
                            thickness: 2,
                            endIndent: 130,
                            color: Color(0xff606078),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            child: DelayedDisplay(
                              delay: Duration(milliseconds: 300),
                              child: AutoSizeText(
                                " # Who am i?",
                                minFontSize: 40,
                                maxFontSize: 54,
                                style: GoogleFonts.poppins(
                                  fontSize: 60,
                                  color: Color(0xffC84E6D),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 420,
                          child: Align(
                            alignment: Alignment.center,
                            child: DelayedDisplay(
                              delay: Duration(milliseconds: 300),
                              child: AutoSizeText(
                                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat",
                                maxFontSize: 20,
                                minFontSize: 16,
                                maxLines: 5,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                    fontSize: 24, color: Color(0xff3B3B58)),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Divider(
                            height: 30,
                            thickness: 2,
                            indent: 150,
                            // endIndent: 50,
                            color: Color(0xff606078),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Divider(
                            height: 16,
                            thickness: 2,
                            indent: 50,
                            endIndent: 100,
                            color: Color(0xff606078),
                          ),
                        ),
                      ]),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: contextWidth * 0.4,
                      width: contextWidth * 0.4,
                      decoration: new BoxDecoration(
                          image: new DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('images/me.png'))))),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 300,
                  padding: EdgeInsets.only(top: contextHeight * 0.4),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        /*   Container(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Divider(
                            height: 16,
                            thickness: 2,
                            // indent: 20,
                            endIndent: 50,
                            color: Color(0xff606078),
                          ),
                        ),*/
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            child: DelayedDisplay(
                              delay: Duration(milliseconds: 300),
                              child: AutoSizeText(
                                "# Contact Me",
                                minFontSize: 40,
                                maxFontSize: 40,
                                style: GoogleFonts.poppins(
                                  fontSize: 40,
                                  color: Color(0xffC84E6D),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: Align(
                            alignment: Alignment.center,
                            child: DelayedDisplay(
                              delay: Duration(milliseconds: 300),
                              child: AutoSizeText(
                                '''-  Twitter 
-   LinkedIn
-   UpWork
-   Gmail''',
                                maxFontSize: 20,
                                minFontSize: 16,
                                maxLines: 7,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff606078),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Divider(
                            height: 30,
                            thickness: 2,
                            indent: 100,
                            endIndent: 50,
                            color: Color(0xff3B3B58),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Divider(
                            height: 16,
                            thickness: 2,
                            indent: 50,
                            endIndent: 100,
                            color: Color(0xff3B3B58),
                          ),
                        ),
                      ]),
                ),
              ),
            ]);
      else
        return Container();
    });
  }
}
