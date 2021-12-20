import 'package:auto_size_text/auto_size_text.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    double contextHeight = 907; //MediaQuery.of(context).size.height;
    double contextWidth = 1920;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: isScreenWide ? contextWidth * 0.15 : contextWidth * 0.12,
        padding: EdgeInsets.only(top: contextHeight * 0.4),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: DelayedDisplay(
                    delay: Duration(milliseconds: 300),
                    child: AutoSizeText(
                      "# Contact Me",
                      // minFontSize: 40,
                      maxFontSize: isScreenWide ? 40 : 24,
                      style: GoogleFonts.poppins(
                        fontSize: isScreenWide ? 36 : 20,
                        color: Color(0xffC84E6D),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: contextWidth * 0.25,
                child: Align(
                  alignment: Alignment.center,
                  child: DelayedDisplay(
                    delay: Duration(milliseconds: 300),
                    child: AutoSizeText(
                      '''
          -  Twitter 
          -   LinkedIn
          -   Email''',
                      maxFontSize: 20,
                      minFontSize: 16,
                      maxLines: 7,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff606078),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Divider(
                  height: 30,
                  thickness: 2,
                  indent: 100,
                  endIndent: isScreenWide ? 20 : 10,
                  color: Color(0xff856654),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  height: 16,
                  thickness: 2,
                  indent: isScreenWide ? 50 : 60,
                  endIndent: isScreenWide ? 100 : 50,
                  color: Color(0xff856654),
                ),
              ),
            ]),
      ),
    );
  }
}