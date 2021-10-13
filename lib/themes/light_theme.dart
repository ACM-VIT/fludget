import 'package:flutter/material.dart';
import 'package:fludget/themes/abstract_theme.dart';

class LightTheme implements FludgetTheme {
  @override
  Color backgroundColor = Colors.white;

  @override
  Color accentColor = Color(0xFFBB7FF8);

  @override
  Color fontColor = Colors.black;

  @override
  Color secondaryColor = Colors.grey[800] ?? Colors.grey;
}
