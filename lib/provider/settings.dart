import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  ThemeMode _appBrightness = ThemeMode.light;

  ThemeMode get appBrightness {
    return _appBrightness;
  }

  void setAppBrightness(bool isDarkMode) {
    _appBrightness = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
