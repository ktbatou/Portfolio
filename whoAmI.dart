import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/contactMe.dart';
import 'package:portfolio/presentition.dart';

class WhoamI extends StatefulWidget {
  @override
  _WhoamIState createState() => _WhoamIState();
}

class _WhoamIState extends State<WhoamI> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    double contextWidth = 1920;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth >= 850)
        return Center(
            child: Container(
                width: isScreenWide ? contextWidth * 0.8 : contextWidth * 0.5,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Presntitaion(),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: isScreenWide
                                  ? contextWidth * 0.4
                                  : contextWidth * 0.25,
                              width: isScreenWide
                                  ? contextWidth * 0.3
                                  : contextWidth * 0.2,
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage('images/me.png'))))),
                      Contact(),
                    ])));
      else if (constraints.maxWidth < 850) {
        bool isScreenWide = MediaQuery.of(context).size.width >= 650;
        return Center(
            child: Container(
                width: isScreenWide ? contextWidth * 0.5 : contextWidth * 0.35,
                child: Flex(
                    direction: isScreenWide ? Axis.horizontal : Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: isScreenWide
                              ? Alignment.centerLeft
                              : Alignment.center,
                          child: Container(
                              height: isScreenWide
                                  ? contextWidth * 0.2
                                  : contextWidth * 0.2,
                              width: isScreenWide
                                  ? contextWidth * 0.2
                                  : contextWidth * 0.2,
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage('images/me.png'))))),
                      Container(
                          padding:
                              EdgeInsets.only(top: isScreenWide ? 100 : 30),
                          alignment: isScreenWide
                              ? Alignment.centerRight
                              : Alignment.center,
                          child: Presntitaion()),
                    ])));
      }

      return Container();
    });
  }
}