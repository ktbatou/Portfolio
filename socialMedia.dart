import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import 'my_flutter_app_icons.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    double contextWidth = 1920;
    return Container(
      width: contextWidth * 0.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          /*  Container(
              child: Text(
            "LinkedIn",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xffC84E6D),
              fontWeight: FontWeight.w400,
            ),
          )),
          Container(
              child: Text(
            "Email",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xffC84E6D),
              fontWeight: FontWeight.w400,
            ),
          )),
          Container(
              child: Text(
            "Twitter",
            style: GoogleFonts.poppins(
              fontSize: 16,
              color: Color(0xffC84E6D),
              fontWeight: FontWeight.w400,
            ),
          )),*/
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        padding: EdgeInsets.only(top: 13, left: 10),
                        child: Icon(MyFlutterApp.linkedin_squared))),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.only(top: 16, left: 14),
                      child: InkWell(
                        onTap: () => launch('https://github.com/ktbatou'),
                        child: Text(
                          "LinkedIn",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffC84E6D),
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ))
              ]),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        padding: EdgeInsets.only(top: 13, left: 10),
                        child: Icon(MyFlutterApp.email))),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.only(top: 16, left: 14),
                      child: InkWell(
                        onTap: () => launch('https://github.com/ktbatou'),
                        child: Text(
                          "Email",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffC84E6D),
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ))
              ]),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        padding: EdgeInsets.only(top: 13, left: 10),
                        child: Icon(MyFlutterApp.twitter))),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.only(top: 16, left: 14),
                      child: InkWell(
                        onTap: () => launch('https://github.com/ktbatou'),
                        child: Text(
                          "Twitter",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xffC84E6D),
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ))
              ])
        ],
      ),
    );
  }
}
