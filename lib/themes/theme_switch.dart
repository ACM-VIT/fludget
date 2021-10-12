import 'package:fludget/themes/theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<ThemeProvider>(context);

    return SwitchListTile(
      title: const Text("Dark Mode"),
      secondary: Icon(Icons.dark_mode),
      value: themeChange.themeMode, 
      onChanged: (bool? value) {
        themeChange.theme = value as bool;
      },
      activeColor: Theme.of(context).primaryColorDark,
    );
  }
}