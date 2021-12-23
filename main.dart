import 'package:flutter/material.dart';
import 'package:portfolio/Home.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  
      /*builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        // maxWidth: 1200,
        minWidth: 480,
        defaultScale: false,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.resize(500, name: MOBILE),
          ResponsiveBreakpoint.autoScale(700, name: MOBILE),
          ResponsiveBreakpoint.resize(800, name: MOBILE),
          ResponsiveBreakpoint.autoScale(900, name: MOBILE),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: "4K")
        ],
      ),*/
      home: Home(),
    );
  }
}
