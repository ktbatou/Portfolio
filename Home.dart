import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:opscroll_web/opscroll_web.dart';
import 'package:portfolio/WorkPage1.dart';
import 'package:portfolio/appBarActions.dart';
import 'package:portfolio/myWork.dart';
import 'package:portfolio/navBar.dart';
import 'package:portfolio/technologies.dart';
import 'package:portfolio/title.dart';
import 'package:portfolio/whoAmI.dart';

import 'appBarActions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double test = 0.5;
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    bool isScreenSmall = MediaQuery.of(context).size.width < 850;

    bool isScreenWide = MediaQuery.of(context).size.width >= 850;
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        //  extendBodyBehindAppBar: true,

        appBar: AppBar(
          automaticallyImplyLeading: isScreenWide ? false : true,
          backgroundColor:
              Color(0xfff0e6dc), //Colors.transparent, //(0xffDEDEDF),
          elevation: 0,
          title: Align(
            alignment: Alignment.bottomLeft,
            child: AutoSizeText(
              "  Ktbatou",
              minFontSize: 30,
              // maxFontSize: 54,
              maxLines: 1,
              style: GoogleFonts.dancingScript(
                fontSize: 36,
                color: Color(0xffC84E6D),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          toolbarHeight: contextHeight * 0.058,
          actions: isScreenSmall
              ? []
              : <Widget>[
                  ActionBar(
                    control: controller,
                  )
                ],
        ),
        endDrawer: Drawer(child: NavBar()),
        body: Container(
            width: contextWidth,
            color: Color(0xfff0e6dc),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //navBar(),
                WhoamI(),
                TitleText(text: "Technologies"),
                tech(),
                TitleText(text: "My Work"),
                MyWork(),
                SizedBox(
                  height: 100,
                )
              ],
            ))));
  }
}
