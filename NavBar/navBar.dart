import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/colors%20&%20theme/colors.dart';
import 'package:portfolio/colors%20&%20theme/themeProvider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Home/my_flutter_app_icons.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<ThemeChanger>(context).getTheme;

    double contextHeight = MediaQuery.of(context).size.height;
    return Container(
        color: theme.backgroungTheme,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 60,
                  padding: EdgeInsets.only(
                    top: 16,
                  ),
                  child: Text(
                    'Ktbatou',
                    style: GoogleFonts.dancingScript(
                      fontSize: 36,
                      color: theme.headerTheme,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(top: 30, left: 30),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/');
                    },
                    child: Text(
                      "Home",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: theme.headerTheme,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(top: 30, left: 30),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('blog');
                    },
                    child: Text(
                      "Blog",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: theme.headerTheme,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),
            ]));
  }
}
