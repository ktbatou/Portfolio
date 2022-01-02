import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:portfolio/Blog/blog.dart';
import 'package:portfolio/Hire/hireMe.dart';
import 'package:portfolio/Home/Home.dart';
import 'package:portfolio/colors%20&%20theme/colors.dart';
import 'package:portfolio/colors%20&%20theme/themeProvider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ThemeChanger>(create: (context) => ThemeChanger()),
  ], child: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => Home(),
        'blog': (context) => Blog(),
        'Hire': (context) => HireMe(),
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      //home: Home(),
    );
  }
}
