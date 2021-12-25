import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:portfolio/themeProvider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class Skills extends StatefulWidget {
  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    bool smallScreen = MediaQuery.of(context).size.width < 850;
    var theme = Provider.of<ThemeChanger>(context, listen: true).getTheme;

    double contextHeight = 907; //MediaQuery.of(context).size.height;
    double contextWidth = 1920;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= 850)
        return Center(
          child: Container(
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                boxShadow: [
                  BoxShadow(
                    color: theme.shadow,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: theme.backgroungTheme,
                border: Border.all(
                  color: theme.bordertheme,
                )),
            padding: EdgeInsets.only(top: 0),
            height: isScreenWide ? contextHeight * 0.20 : contextHeight * 0.15,
            width: isScreenWide ? contextWidth * 0.45 : contextWidth * 0.35,
            child: Center(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => launch('https://dart.dev/'),
                        child: HoverContainer(
                          width: isScreenWide ? 60 : 50,
                          height: isScreenWide ? 60 : 50,
                          hoverWidth: isScreenWide ? 75 : 65,
                          hoverHeight: isScreenWide ? 75 : 65,
                          child: Container(
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage('images/Dart.png')))),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Dart',
                          style: GoogleFonts.poppins(
                            fontSize: isScreenWide ? 20 : 16,
                            color: theme.textTheme,
                            //  fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => launch('https://dart.dev/'),
                        child: HoverContainer(
                          width: isScreenWide ? 80 : 70,
                          height: isScreenWide ? 80 : 70,
                          hoverWidth: isScreenWide ? 95 : 75,
                          hoverHeight: isScreenWide ? 95 : 75,
                          child: Container(
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage('images/figma.png')))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'Figma',
                          style: GoogleFonts.poppins(
                            fontSize: isScreenWide ? 20 : 16,
                            color: theme.textTheme,
                            //     fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => launch('https://flutter.dev/'),
                        child: HoverContainer(
                            width: isScreenWide ? 60 : 50,
                            height: isScreenWide ? 60 : 50,
                            hoverWidth: isScreenWide ? 75 : 65,
                            hoverHeight: isScreenWide ? 75 : 65,
                            child: Container(
                                decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage(
                                            'images/flutter.png'))))),
                      ),
                      Container(
                        child: Text(
                          'Flutter',
                          style: GoogleFonts.poppins(
                            fontSize: isScreenWide ? 20 : 16,
                            color: theme.textTheme,
                            //    fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => launch('https://firebase.google.com/'),
                        child: HoverContainer(
                            width: isScreenWide ? 60 : 50,
                            height: isScreenWide ? 60 : 50,
                            hoverWidth: isScreenWide ? 75 : 65,
                            hoverHeight: isScreenWide ? 75 : 65,
                            child: Container(
                                decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage(
                                            'images/firebase.png'))))),
                      ),
                      Container(
                        child: Text(
                          'Firebase',
                          style: GoogleFonts.poppins(
                            fontSize: isScreenWide ? 20 : 16,
                            color: theme.textTheme,
                            //  fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => launch('https://git-scm.com/'),
                        child: HoverContainer(
                            width: isScreenWide ? 60 : 50,
                            height: isScreenWide ? 60 : 50,
                            hoverWidth: isScreenWide ? 75 : 65,
                            hoverHeight: isScreenWide ? 75 : 65,
                            child: Container(
                                decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: AssetImage(
                                            'images/git-icon.png'))))),
                      ),
                      Container(
                        child: Text(
                          'Git',
                          style: GoogleFonts.poppins(
                            fontSize: isScreenWide ? 20 : 16,
                            color: theme.textTheme,
                            //color: Color(0xffC84E6D),
                            //  fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                ])),
          ),
        );
      else if (constraints.maxWidth < 850)
        return Center(
          child: Container(
            margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffE9BFAF),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Color(0xfff0e6dc),
                borderRadius: BorderRadius.circular(
                  10,
                ),
                border: Border.all(
                  color: Color(0xff856654),
                )),
            padding: EdgeInsets.only(top: 0),
            height: contextHeight * 0.5,
            width: contextWidth * 0.15,
            child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () => launch('https://dart.dev/'),
                              child: HoverContainer(
                                width: 60,
                                height: 60,
                                hoverWidth: 75,
                                hoverHeight: 75,
                                child: Container(
                                    decoration: new BoxDecoration(
                                        image: new DecorationImage(
                                            fit: BoxFit.fitHeight,
                                            image: AssetImage(
                                                'images/Dart.png')))),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 15),
                              child: Text('Dart'),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () => launch('https://git-scm.com/'),
                              child: HoverContainer(
                                  width: 60,
                                  height: 60,
                                  hoverWidth: 75,
                                  hoverHeight: 75,
                                  child: Container(
                                      decoration: new BoxDecoration(
                                          image: new DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(
                                                  'images/git-icon.png'))))),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 15),
                              child: Text('Git'),
                            )
                          ],
                        ),
                      ]),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () => launch('https://flutter.dev/'),
                              child: HoverContainer(
                                  width: 60,
                                  height: 60,
                                  hoverWidth: 75,
                                  hoverHeight: 75,
                                  child: Container(
                                      decoration: new BoxDecoration(
                                          image: new DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(
                                                  'images/flutter.png'))))),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 15),
                              child: Text('Flutter'),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () =>
                                  launch('https://firebase.google.com/'),
                              child: HoverContainer(
                                  width: 60,
                                  height: 60,
                                  hoverWidth: 75,
                                  hoverHeight: 75,
                                  child: Container(
                                      decoration: new BoxDecoration(
                                          image: new DecorationImage(
                                              fit: BoxFit.fitHeight,
                                              image: AssetImage(
                                                  'images/firebase.png'))))),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 15),
                              child: Text('Firebase'),
                            )
                          ],
                        ),
                      ]),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () => launch('https://dart.dev/'),
                        child: HoverContainer(
                          width: 80,
                          height: 80,
                          hoverWidth: 95,
                          hoverHeight: 95,
                          child: Container(
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage('images/figma.png')))),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text('Figma'),
                      )
                    ],
                  ),
                ])),
          ),
        );
      else
        return Container();
    });
  }
}
