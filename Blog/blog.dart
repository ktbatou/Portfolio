import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/NavBar/appBarActions.dart';
import 'package:portfolio/NavBar/navBar.dart';
import 'package:portfolio/colors%20&%20theme/themeProvider.dart';
import 'package:provider/provider.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    bool isScreenSmall = MediaQuery.of(context).size.width < 850;
    var theme = Provider.of<ThemeChanger>(context, listen: true).getTheme;
    bool isScreenWide = MediaQuery.of(context).size.width >= 850;
    double contextHeight = MediaQuery.of(context).size.height;
    double contextWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/');
                  },
                  style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  child: AutoSizeText(
                    "Ktbatou",
                    maxLines: 1,
                    style: GoogleFonts.courgette(
                      fontSize: isScreenWide ? 32 : 24,
                      color: theme.headerTheme,
                      //  fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            : Container(),
        toolbarHeight: contextHeight * 0.06,
        actions: <Widget>[ActionBar(rout:'blog')],
      ),
      drawer: Drawer(child: NavBar()),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  'Blog',
                  style: GoogleFonts.poppins(
                      fontSize: isScreenWide ? 44 : 36,
                      color: theme.headerTheme),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: contextHeight * 0.3),
                child: Text(
                  '''Stay tuned. Something awesome is coming soon. 
        Be first to know.''',
                  style: GoogleFonts.courgette(
                      fontSize: isScreenWide ? 36 : 24, color: theme.textTheme),
                  textAlign: TextAlign.center,
                ),
              ),
            ]),
      ),
    );
  }
}
