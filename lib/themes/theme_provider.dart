import 'package:fludget/themes/theme_preferences.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemePreference themePreference = ThemePreference();
  bool _themeMode = ThemePreference.DARK_THEME;

  bool get themeMode => _themeMode;

  set theme(bool value) {
    _themeMode = value;
    themePreference.setTheme(value);
    notifyListeners();
  }
}