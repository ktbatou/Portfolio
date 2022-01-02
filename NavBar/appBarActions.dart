import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/colors%20&%20theme/colors.dart';
import 'package:portfolio/colors%20&%20theme/themeProvider.dart';
import 'package:provider/provider.dart';

class ActionBar extends StatefulWidget {
  String rout;
  ActionBar({required this.rout});
  @override
  _ActionState createState() => _ActionState();
}

class _ActionState extends State<ActionBar> {
  Color blogColor = Color(0xffC84E6D);

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeChanger>().getTheme;
    IconData themeIcon = theme.toString() == "Instance of 'LightMode'"
        ? Icons.dark_mode_outlined
        : Icons.wb_sunny;
    bool isScreenSmall = MediaQuery.of(context).size.width < 850;
    bool isScreenWide = MediaQuery.of(context).size.width >= 850;

    return Row(
      children: [
        isScreenWide
            ? Container(
                padding: EdgeInsets.only(right: 20),
                child: TextButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                    child: Text(
                      "Home",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: widget.rout == 'home'
                            ? theme.selected
                            : theme.headerTheme,
                        fontFamily: 'Poppins',
                      ),
                    )),
              )
            : Container(),
        isScreenWide
            ? Container(
                padding: EdgeInsets.only(right: 30),
                child: TextButton(
                    style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () {
                      Navigator.of(context).pushNamed('blog');
                    },
                    child: Text(
                      "Blog",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: widget.rout == 'blog'
                            ? theme.selected
                            : theme.headerTheme,
                        fontFamily: 'Poppins',
                      ),
                    )),
              )
            : Container(),
        widget.rout == 'blog' || widget.rout == 'Hire'
            ? Container()
            : Container(
                width: isScreenWide ? 180 : 150,
                height: isScreenWide ? 30 : 25,
                padding: EdgeInsets.only(right: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shadowColor:
                          MaterialStateProperty.all<Color>(theme.shadow),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          theme.backgroungTheme),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(
                                color: theme.bordertheme,
                              )))),
                  child: Text('Hire me',
                      style: TextStyle(color: theme.headerTheme, fontSize: 20)),
                  onPressed: () {
                    Navigator.of(context).pushNamed('Hire');
                  },
                )),
        Container(
          padding: EdgeInsets.only(right: 30),
          child: InkWell(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              onTap: () {
                if (theme.toString() == "Instance of 'LightMode'") {
                  Provider.of<ThemeChanger>(context, listen: false)
                      .setTheme(DarkMode());
                  setState(() {
                    themeIcon = Icons.wb_sunny;
                  });
                } else {
                  Provider.of<ThemeChanger>(context, listen: false)
                      .setTheme(LightMode());
                  setState(() {
                    themeIcon = Icons.dark_mode_outlined;
                  });
                }
              },
              child: Icon(
                themeIcon,
              )),
        )
      ],
    );
  }
}
