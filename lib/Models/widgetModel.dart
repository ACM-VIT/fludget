import 'package:flutter/widgets.dart';

class WidgetModel {
  final String name, subtitle, link;
  final Widget implementation;
  final Widget description;
  const WidgetModel({
    required this.name,
    this.subtitle = '',
    required this.link,
    required this.implementation,
    required this.description,
  });
}
