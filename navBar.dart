import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'my_flutter_app_icons.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    double contextHeight = MediaQuery.of(context).size.height;
    return Container(
        color: Color(0xfff0e6dc),
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
                      color: Color(0xffC84E6D),
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
                    onTap: () {},
                    child: Text(
                      "Blog",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffC84E6D),
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ), /* Container(
                    width: 180,
                    height: 50,
                    padding: EdgeInsets.only(
                      top: 16,
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xfff0e6dc)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                        color: Color(0xff856654),
                                      )))),
                      child: Text('Hire me',
                          style: TextStyle(
                              color: Color(0xffC84E6D), fontSize: 20)),
                      onPressed: () {},
                    )),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.only(top: 50),
                    width: 200,
                    height: contextHeight * 0.8,
                    child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              width: 100,
                              height: 50,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            padding: EdgeInsets.only(
                                                top: 13, left: 10),
                                            child: Icon(
                                                MyFlutterApp.github_circled))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          padding: EdgeInsets.only(top: 20),
                                          child: InkWell(
                                            onTap: () => launch(
                                                'https://github.com/ktbatou'),
                                            child: Text(
                                              "Github",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xffC84E6D),
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ),
                                        ))
                                  ]));
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: 20,
                          );
                        },
                        itemCount: 3),
                  )*/
              ),
            ]));
  }
}
