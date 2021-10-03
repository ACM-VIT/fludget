import 'package:flutter/widgets.dart';

class WidgetModel {
  final String name, subtitle;
  final Widget sample;
  const WidgetModel({
    required this.name,
    this.subtitle = '',
    required this.sample,
  });
}
