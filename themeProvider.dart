import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeChanger with ChangeNotifier {
  dynamic _themeMode = LightMode();

  fetchTheme() async {
    var prefs = await SharedPreferences.getInstance();
    if (prefs.getString('theme') == null) {
      notifyListeners();
      return null;
    } else if (prefs.getString('theme') == 'dark')
      _themeMode = DarkMode();
    else
      _themeMode = LightMode();
    notifyListeners();
    return null;
  }

  get getTheme => _themeMode;
  void setTheme(dynamic themeMode) async {
    var prefs = await SharedPreferences.getInstance();
    if (themeMode.toString() == "Instance of 'LightMode'") {
      await prefs.setString('theme', 'light');
    } else
      await prefs.setString('theme', 'dark');
    _themeMode = themeMode;
    notifyListeners();
  }
}
