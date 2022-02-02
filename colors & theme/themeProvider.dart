import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/colors%20&%20theme/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeChanger with ChangeNotifier {
  dynamic _themeMode = LightMode();
  IconData _themeIcon = Icons.wb_sunny;

  fetchTheme() async {
    var prefs = await SharedPreferences.getInstance();
    print("first time i guess theme ${prefs.getString('theme')}");
    if (prefs.getString('theme') == null) {
      notifyListeners();
      return null;
    } else if (prefs.getString('theme') == 'dark') {
      _themeIcon = Icons.wb_sunny;
      _themeMode = DarkMode();
    } else {
      _themeMode = LightMode();
      _themeIcon = Icons.dark_mode_outlined;
    }
    notifyListeners();
    return null;
  }

  get getTheme => _themeMode;
  get getIcon => _themeIcon;
  void setTheme(dynamic themeMode) async {
    var prefs = await SharedPreferences.getInstance();
    if ('dark' == prefs.getString('theme')) {
      await prefs.setString('theme', 'light');
      _themeIcon = Icons.dark_mode_outlined;
    } else {
      await prefs.setString('theme', 'dark');
      _themeIcon = Icons.wb_sunny;
    }
    _themeMode = themeMode;
    notifyListeners();
  }
}
