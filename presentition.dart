import 'package:auto_size_text/auto_size_text.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/themeProvider.dart';
import 'package:provider/provider.dart';

class Presntitaion extends StatefulWidget {
  @override
  _presntitaionState createState() => _presntitaionState();
}

class _presntitaionState extends State<Presntitaion> {
  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<ThemeChanger>(context, listen: true).getTheme;
    bool wid = MediaQuery.of(context).size.width > 850;
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    double contextHeight = 907;
    double contextWidth = 1920;
    return Container(
      width: isScreenWide ? contextWidth * 0.16 : contextWidth * 0.12,
      padding: EdgeInsets.only(bottom: wid ? contextHeight * 0.3 : 20),
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
                  endIndent: isScreenWide ? 130 : 80,
                  color: theme.bordertheme,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: DelayedDisplay(
                    delay: Duration(milliseconds: 300),
                    child: AutoSizeText(
                      " # Who am i?",
                      minFontSize: 30,
                      // maxFontSize: 54,
                      maxLines: 1,
                      style: GoogleFonts.poppins(
                        fontSize: isScreenWide ? 36 : 24,
                        color: theme.headerTheme,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: isScreenWide ? 20 : 10,
              ),
              Container(
                width: isScreenWide ? contextWidth * 0.3 : contextWidth * 0.2,
                child: Align(
                  alignment: Alignment.center,
                  child: DelayedDisplay(
                    delay: Duration(milliseconds: 300),
                    child: AutoSizeText(
                      "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat",
                      // maxFontSize: 20,
                      minFontSize: 16,
                      maxLines: 5,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: isScreenWide ? 16 : 12,
                          color: theme.textTheme),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Divider(
                  height: 30,
                  thickness: 2,
                  indent: isScreenWide ? 150 : 100,
                  // endIndent: 50,
                  color: theme.bordertheme,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  height: 16,
                  thickness: 2,
                  indent: isScreenWide ? 50 : 20,
                  endIndent: 100,
                  color: theme.bordertheme,
                ),
              ),
            ]),
      ),
    );
  }
}
