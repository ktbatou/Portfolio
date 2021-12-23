import 'package:auto_size_text/auto_size_text.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'my_flutter_app_icons.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
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
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.only(top: 13, left: 10),
                            child: Icon(MyFlutterApp.linkedin_squared))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.only(top: 16, left: 14),
                          child: InkWell(
                            onTap: () => launch('https://github.com/ktbatou'),
                            child: Text(
                              "LinkedIn",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffC84E6D),
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ))
                  ]),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.only(top: 13, right: 10),
                            child: Icon(MyFlutterApp.email))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.only(top: 16, left: 10),
                          child: InkWell(
                            onTap: () => launch('https://github.com/ktbatou'),
                            child: Text(
                              "Email",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffC84E6D),
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ))
                  ]),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            padding: EdgeInsets.only(top: 13, left: 0),
                            child: Icon(MyFlutterApp.twitter))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.only(top: 16, left: 16),
                          child: InkWell(
                            onTap: () => launch('https://github.com/ktbatou'),
                            child: Text(
                              "Twitter",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffC84E6D),
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                        ))
                  ]),
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
