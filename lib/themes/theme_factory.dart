import 'package:fludget/themes/abstract_theme.dart';
import 'package:fludget/themes/dark_theme.dart';
import 'package:fludget/themes/light_theme.dart';
import 'package:fludget/themes/theme_preferences.dart';
import 'package:flutter/material.dart';

class ThemeFactory {
  static ThemeData getTheme(bool mode) {
    FludgetTheme theme = mode == ThemePreference.LIGHT_THEME ? LightTheme() : DarkTheme();
    return ThemeData(
      backgroundColor: theme.backgroundColor,
      primaryColor: theme.accentColor,
      primaryColorLight: LightTheme().accentColor,
      primaryColorDark: DarkTheme().accentColor,
      brightness:  mode == ThemePreference.LIGHT_THEME ? Brightness.light : Brightness.dark,
      toggleableActiveColor: theme.accentColor,
      indicatorColor: theme.fontColor,
      textTheme: TextTheme(
        headline1: TextStyle(color: theme.fontColor, fontSize: 20),
        subtitle1: TextStyle(color: theme.fontColor),
        bodyText1: TextStyle(color: theme.fontColor),
      ),
      chipTheme: ChipThemeData.fromDefaults(
        brightness: mode == ThemePreference.LIGHT_THEME ? Brightness.light : Brightness.dark, 
        secondaryColor: theme.accentColor, 
        labelStyle: TextStyle()
      ),
      colorScheme:  mode == ThemePreference.LIGHT_THEME ? ColorScheme.light(primary: theme.accentColor) : ColorScheme.dark(primary: theme.accentColor),
      primaryIconTheme: IconThemeData(color: theme.fontColor),
      iconTheme:  IconThemeData(color: theme.fontColor),
      snackBarTheme: SnackBarThemeData(actionTextColor: theme.accentColor),
    );
  }
}