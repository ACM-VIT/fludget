import 'package:flutter/material.dart';
import 'package:fludget/themes/abstract_theme.dart';

class DarkTheme implements FludgetTheme {
  @override
  Color backgroundColor = Colors.grey[900] ?? Colors.black;

  @override
  Color accentColor = Colors.orange[900] ?? Colors.orange;

  @override
  Color fontColor = Colors.white;
}