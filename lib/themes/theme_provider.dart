import 'package:flutter/material.dart';
import 'package:sixth_app/themes/dark_mode.dart';
import 'package:sixth_app/themes/light_mode.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;
  bool get isDarkMode => _themeData == darkMode;
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
  void toggletheme(){
    if (_themeData == lightMode) {
      themeData = darkMode;
    }
    else{
      themeData = lightMode;
    }
  }
}
