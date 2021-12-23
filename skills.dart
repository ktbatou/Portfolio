import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
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

    double contextHeight = 907; //MediaQuery.of(context).size.height;
    double contextWidth = 1920;
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            border: Border.all(
              color: Color(0xff856654),
            )),
        padding: EdgeInsets.only(top: 0),
        height: contextHeight * 0.15,
        /* isScreenWide
            ? contextHeight * 0.15
            : smallScreen
                ? contextHeight * 0.30
                : contextHeight * 0.20,*/
        width: contextWidth * 0.35,
        /* isScreenWide
            ? contextWidth * 0.35
            : smallScreen
                ? contextWidth * 0.4
                : contextWidth * 0.4,*/
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
                      width: 50,
                      height: 50,
                      hoverWidth: 60,
                      hoverHeight: 60,
                      child: Container(
                          decoration: new BoxDecoration(
                              image: new DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage('images/Dart.png')))),
                    ),
                  ),
                  Container(
                    child: Text('Dart'),
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
                      width: 70,
                      height: 70,
                      hoverWidth: 85,
                      hoverHeight: 85,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () => launch('https://flutter.dev/'),
                    child: HoverContainer(
                        width: 50,
                        height: 50,
                        hoverWidth: 65,
                        hoverHeight: 65,
                        child: Container(
                            decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: AssetImage('images/flutter.png'))))),
                  ),
                  Container(
                    child: Text('Flutter'),
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
                        width: 50,
                        height: 50,
                        hoverWidth: 65,
                        hoverHeight: 65,
                        child: Container(
                            decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image:
                                        AssetImage('images/firebase.png'))))),
                  ),
                  Container(
                    child: Text('Firebase'),
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
                        width: 50,
                        height: 50,
                        hoverWidth: 65,
                        hoverHeight: 65,
                        child: Container(
                            decoration: new BoxDecoration(
                                image: new DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image:
                                        AssetImage('images/git-icon.png'))))),
                  ),
                  Container(
                    child: Text('Git'),
                  )
                ],
              ),
            ])),
      ),
    );
  }
}
