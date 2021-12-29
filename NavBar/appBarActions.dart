import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/colors%20&%20theme/colors.dart';
import 'package:portfolio/colors%20&%20theme/themeProvider.dart';
import 'package:provider/provider.dart';

class ActionBar extends StatefulWidget {
  bool flag;
  ActionBar({required this.flag});
  @override
  _ActionState createState() => _ActionState(blogRoute: flag);
}

class _ActionState extends State<ActionBar> {
  Color blogColor = Color(0xffC84E6D);
  bool blogRoute;
  _ActionState({required this.blogRoute});

  @override
  Widget build(BuildContext context) {
    var theme = context.watch<ThemeChanger>().getTheme;
    IconData themeIcon = theme.toString() == "Instance of 'LightMode'"
        ? Icons.dark_mode
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
                        color: blogRoute == false
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
                        color: blogRoute ? theme.selected : theme.headerTheme,
                        fontFamily: 'Poppins',
                      ),
                    )),
              )
            : Container(),
        blogRoute
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
                  onPressed: () {},
                )),
        Container(
          padding: EdgeInsets.only(right: 30),
          child: InkWell(
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
                    themeIcon = Icons.dark_mode;
                  });
                }
              },
              child: Icon(themeIcon)),
        )
      ],
    );
  }
}
