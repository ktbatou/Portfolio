import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/colors%20&%20theme/colors.dart';
import 'package:portfolio/colors%20&%20theme/themeProvider.dart';
import 'package:provider/provider.dart';

class TitleText extends StatefulWidget {
  String text;
  TitleText({required this.text});

  @override
  _TitleState createState() => _TitleState();
}

class _TitleState extends State<TitleText> {
  double contextWidth = 1920;

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<ThemeChanger>(context).getTheme;
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    return Center(
        child: Container(
            width: contextWidth * 0.2,
            padding: EdgeInsets.only(top: isScreenWide ? 30 : 30),
            child: Column(children: [
              Align(
                //  alignment: Alignment.centerLeft,
                child: Text(
                  widget.text,
                  style: GoogleFonts.poppins(
                    fontSize: isScreenWide ? 24 : 24,
                    color: theme.headerTheme,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Divider(
                  height: 10,
                  thickness: 2,
                  indent: isScreenWide ? 150 : 150,
                  endIndent: isScreenWide ? 70 : 85,
                  color: theme.bordertheme,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  height: 16,
                  thickness: 2,
                  indent: isScreenWide ? 100 : 100,
                  endIndent: isScreenWide ? 100 : 130,
                  color: theme.bordertheme,
                ),
              ),
            ])));
  }
}
