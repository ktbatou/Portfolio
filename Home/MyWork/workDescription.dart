import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/colors%20&%20theme/themeProvider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../my_flutter_app_icons.dart';

class description extends StatefulWidget {
  @override
  _descriptionState createState() => _descriptionState();
}

class _descriptionState extends State<description> {
  @override
  Widget build(BuildContext context) {
    bool isScreenWide = MediaQuery.of(context).size.width >= 1200;
    var theme = Provider.of<ThemeChanger>(context, listen: true).getTheme;

    double contextHeight = 907;
    double contextWidth = 1920;
    return Container(
      width: isScreenWide ? contextWidth * 0.16 : contextWidth * 0.12,
      child: Align(
        alignment: Alignment.center,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: DelayedDisplay(
                  delay: Duration(milliseconds: 300),
                  child: Text(
                    "Tracker",
                    style: TextStyle(
                        fontSize: isScreenWide ? 36 : 24,
                        color: theme.headerTheme,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: isScreenWide ? contextWidth * 0.15 : contextWidth * 0.1,
                child: Align(
                  alignment: Alignment.center,
                  child: DelayedDisplay(
                    delay: Duration(milliseconds: 300),
                    child: Text(
                      "Maxime mollitia, molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum numquam blanditiis harum quisquam eius sed odit fugiat",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: theme.textTheme,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: DelayedDisplay(
                      delay: Duration(seconds: 2),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding:
                                        EdgeInsets.only(top: 16, right: 10),
                                    child: Icon(MyFlutterApp.github_circled))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.only(top: 20),
                                  child: InkWell(
                                    onTap: () =>
                                        launch('https://github.com/ktbatou'),
                                    child: Text(
                                      "Github",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: theme.headerTheme,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ))
                          ])))
            ]),
      ),
    );
  }
}
