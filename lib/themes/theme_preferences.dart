import 'package:shared_preferences/shared_preferences.dart';

class ThemePreference {
  static const THEME_STATUS = "THEME_STATUS";
  static const DARK_THEME = true;
  static const LIGHT_THEME = false;

  setTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(THEME_STATUS, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(THEME_STATUS) ?? LIGHT_THEME;
  }
}