import 'package:flutter/material.dart';
import 'package:portfolio/colors%20&%20theme/colors.dart';
import 'package:portfolio/Home/whoAmI/contactMe.dart';
import 'package:portfolio/Home/whoAmI/presentition.dart';

class WhoamI extends StatefulWidget {
  @override
  _WhoamIState createState() => _WhoamIState();
}

class _WhoamIState extends State<WhoamI> {
  late Image myImage;
  @override
  void initState() {
    super.initState();
    myImage = Image.asset("images/me.png");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(myImage.image, context);
  }

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
                              //  margin: EdgeInsets.only(left: 70, right: 50),
                              height: isScreenWide
                                  ? contextWidth * 0.35
                                  : contextWidth * 0.25,
                              width: isScreenWide
                                  ? contextWidth * 0.3
                                  : contextWidth * 0.25,
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: Image.asset("images/me.png")
                                          .image)))),
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
                                  ? contextWidth * 0.16
                                  : contextWidth * 0.16,
                              width: isScreenWide
                                  ? contextWidth * 0.16
                                  : contextWidth * 0.16,
                              decoration: new BoxDecoration(
                                  image: new DecorationImage(
                                      fit: BoxFit.fitWidth,
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
