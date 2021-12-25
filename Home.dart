import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/appBarActions.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/myWork.dart';
import 'package:portfolio/navBar.dart';
import 'package:portfolio/skills.dart';
import 'package:portfolio/socialMedia.dart';
import 'package:portfolio/technologies.dart';
import 'package:portfolio/themeProvider.dart';
import 'package:portfolio/title.dart';
import 'package:portfolio/whoAmI.dart';
import 'package:provider/provider.dart';

import 'appBarActions.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double test = 0.5;
  @override
  void initState() {
    Provider.of<ThemeChanger>(context, listen: false).fetchTheme();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    bool isScreenSmall = MediaQuery.of(context).size.width < 850;
    var theme = Provider.of<ThemeChanger>(context, listen: true).getTheme;
    bool isScreenWide = MediaQuery.of(context).size.width >= 850;
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        //  extendBodyBehindAppBar: true,
        backgroundColor: theme.backgroungTheme,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: theme.bordertheme,
          ),
          automaticallyImplyLeading: isScreenWide ? false : true,
          backgroundColor: theme.backgroungTheme,
          elevation: 0,
          title: isScreenWide
              ? Align(
                  alignment: Alignment.bottomLeft,
                  child: AutoSizeText(
                    "  Ktbatou",
                    maxLines: 1,
                    style: GoogleFonts.dancingScript(
                      fontSize: isScreenWide ? 36 : 24,
                      color: theme.headerTheme,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              : Container(),
          toolbarHeight: contextHeight * 0.06,
          actions: <Widget>[
            ActionBar(
              control: controller,
            )
          ],
        ),
        drawer: Drawer(child: NavBar()),
        body: Container(
            width: contextWidth,
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WhoamI(),
                isScreenSmall
                    ? TitleText(text: "Technologies")
                    : TitleText(text: "Skills"),
                isScreenSmall ? Skills() : tech(),
                TitleText(text: "My Work"),
                MyWork(),
                isScreenSmall
                    ? TitleText(text: "Skills")
                    : TitleText(text: "Technologies"),
                isScreenSmall ? tech() : Skills(),
                SizedBox(
                  height: 50,
                ),
                isScreenWide ? Container() : Contacts(),
                SizedBox(
                  height: 100,
                )
              ],
            ))));
  }
}
